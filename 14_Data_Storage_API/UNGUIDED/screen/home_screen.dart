import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praktikum_14/services/api_service.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({super.key});
  final _apiService = ApiService();
  final posts = <dynamic>[].obs;
  final isLoading = false.obs;

  // Logika untuk fetch data
  void fetchPosts() async {
    isLoading(true);
    try {
      await _apiService.fetchPosts();
      posts.value = _apiService.posts;
      Get.snackbar('Success', 'Data successfully fetched');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }

  // Logika untuk create post
  void createPost() async {
    isLoading(true);
    try {
      await _apiService.createPost();
      posts.value = _apiService.posts;
      Get.snackbar('Success', 'Data successfully added');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }

  // Logika untuk update post
  void updatePost(int id, String title, String body) async {
    isLoading(true);
    try {
      await _apiService.updatePost(id, title, body);
      posts.value = _apiService.posts;
      Get.snackbar('Success', 'Data successfully updated');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }

  // Logika untuk delete post
  void deletePost(int id) async {
    isLoading(true);
    try {
      await _apiService.deletePost(id);
      posts.value = _apiService.posts;
      Get.snackbar('Success', 'Data successfully deleted');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API - GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Obx(() {
              if (isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (posts.isEmpty) {
                return const Text(
                  "Tekan tombol GET untuk mengambil data",
                  style: TextStyle(fontSize: 14),
                );
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return Card(
                      elevation: 4,
                      child: ListTile(
                        title: Text(
                          post['title'] ?? 'No Title',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        subtitle: Text(
                          post['body'] ?? 'No Body',
                          style: const TextStyle(fontSize: 12),
                        ),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => deletePost(post['id']),
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: fetchPosts,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('GET'),
            ),
            ElevatedButton(
              onPressed: createPost,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('POST'),
            ),
            ElevatedButton(
              onPressed: () => updatePost(1, 'Updated Title', 'Updated Body'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text('UPDATE'),
            ),
          ],
        ),
      ),
    );
  }
}
