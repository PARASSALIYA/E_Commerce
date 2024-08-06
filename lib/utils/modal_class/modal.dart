// class Product {
//   int id;
//   String title;
//   String description;
//   String category;
//   double price;
//   double discountPercentage;
//   double rating;
//   int stock;
//   List<String> tags;
//   String brand;
//   String sku;
//   int weight;
//   Dimensions dimensions;
//   String warrantyInformation;
//   String shippingInformation;
//   String availabilityStatus;
//   List<Review> reviews;
//   String returnPolicy;
//   int minimumOrderQuantity;
//   Meta meta;
//   List<String> images;
//   String thumbnail;
//
//   Product({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.category,
//     required this.price,
//     required this.discountPercentage,
//     required this.rating,
//     required this.stock,
//     required this.tags,
//     required this.brand,
//     required this.sku,
//     required this.weight,
//     required this.dimensions,
//     required this.warrantyInformation,
//     required this.shippingInformation,
//     required this.availabilityStatus,
//     required this.reviews,
//     required this.returnPolicy,
//     required this.minimumOrderQuantity,
//     required this.meta,
//     required this.images,
//     required this.thumbnail,
//   });
//
//   factory Product.formMap(Map data) {
//     return Product(
//       id: data['id'],
//       title: data['title'],
//       description: data['description'],
//       category: data['category'],
//       price: data['price'],
//       discountPercentage: data[' discountPercentage'],
//       rating: data['rating'],
//       stock: data['stock'],
//       tags: data['tags'],
//       brand: data['brand'],
//       sku: data['sku'],
//       weight: data[' weight'],
//       dimensions: data['stock'],
//       warrantyInformation: data['warrantyInformation'],
//       shippingInformation: data[' shippingInformation'],
//       availabilityStatus: data['availabilityStatus'],
//       reviews: data['reviews'],
//       returnPolicy: data['returnPolicy'],
//       minimumOrderQuantity: data['minimumOrderQuantity'],
//       meta: data['meta'],
//       images: data[' images'],
//       thumbnail: data['thumbnail'],
//     );
//   }
//   Map<String, dynamic> productData() => {
//         "id": id,
//         " title": title,
//         "description": description,
//         "thumbnail": thumbnail,
//         " images": images,
//         "category": category,
//         "price": price,
//         " discountPercentage": discountPercentage,
//         "rating": rating,
//         " stock": stock,
//         "tags": tags,
//         "brand": brand,
//         "sku": sku,
//         "weight": weight,
//         "dimensions": stock,
//         "warrantyInformation": warrantyInformation,
//         "shippingInformation": shippingInformation,
//         "availabilityStatus": availabilityStatus,
//         "reviews": reviews,
//         "returnPolicy": returnPolicy,
//         "minimumOrderQuantity": minimumOrderQuantity,
//         "meta": meta,
//       };
// }
//
// class Dimensions {
//   double width;
//   double height;
//   double depth;
//
//   Dimensions({
//     required this.width,
//     required this.height,
//     required this.depth,
//   });
// }
//
// class Meta {
//   DateTime createdAt;
//   DateTime updatedAt;
//   String barcode;
//   String qrCode;
//
//   Meta({
//     required this.createdAt,
//     required this.updatedAt,
//     required this.barcode,
//     required this.qrCode,
//   });
// }
//
// class Review {
//   int rating;
//   String comment;
//   DateTime date;
//   String reviewerName;
//   String reviewerEmail;
//
//   Review({
//     required this.rating,
//     required this.comment,
//     required this.date,
//     required this.reviewerName,
//     required this.reviewerEmail,
//   });
// }
