import 'package:test_shopping/models/category_model.dart';
import 'package:test_shopping/models/product_model.dart';

const sourceImageLink="https://images.unsplash.com/photo-1474511320723-9a56873867b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1744&q=80";
const sourceImageLink2="https://picsum.photos/200/300";
final List<String> slider = <String>['Coming Soon', 'Coming Soon', 'Coming Soon'];


final List<String> priceOptionDropdown = <String>[
  'Price Option 1',
  'Price Option 2',

];

final List<String> selectDeliveryOption = <String>[
  'Home',
  'Office',
  'Other'
];

final List<String> settingDataTitle = <String>[
  'Notifications',
  'Delete My Account',
  'Logout',
];



final List<String> brandImageLinks = <String>[
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2FDettol.PNG?alt=media&token=de3eef14-fc8e-40b3-9372-dc7bc25c7530',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2FHimalaya.PNG?alt=media&token=6eea0bf0-6201-4efa-8425-2d4b00abe1c8',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2FCetaphil.PNG?alt=media&token=90f22a2d-0941-4cf2-9d22-29cc1e597ad1',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2FIMG_8196(8).PNG?alt=media&token=9db800ab-1bc0-4add-b434-cc004ac9577c',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2FProtinex.PNG?alt=media&token=ff626df4-329c-43c8-8f74-4ee92ddadd5b',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2FTata%201mg.PNG?alt=media&token=c2eaf5e,5-5e0a-4761-b94c-a7e48053f329',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2Fmamaearth.PNG?alt=media&token=d48ecec9-096d-45e7-a99a-6df77fd2d9f0',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2Fmuscleblaze.PNG?alt=media&token=ee54e6de-daa9-44ee-be44-248269fbc770',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fbrand_logos%2Fnivia.PNG?alt=media&token=44a76ada-2408-46fe-a973-46a0a07c548d'
];


final List<String> dummyCategoryNames = <String> [
  'Vitamins & Supplements',
  'Nutritional Drinks',
  'BP Monitors',
  'Ayurveda',
  'Skin Care',
  'Pain Relief',
  'Homeopathy',
];

final List<CategoryModel> dummyCategories = [
  CategoryModel(id: 1, name: 'Vitamins & Supplements',
      imgLink: 'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2F2157816-The-7-Best-Vitamins-and-Supplements-for-Stress-According-to-Dietitians-1296x728-Header-81b9bf.webp?alt=media&token=171ff95d-d04f-47ef-898b-4d26568b1a0c' ),
  CategoryModel(id: 2, name:  'Nutritional Drinks',
      imgLink:  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2Fensure-original-products-tile.jpg?alt=media&token=f1291048-8029-47e9-b850-f87fa5be33a0'),
  CategoryModel(id: 3, name:  'BP Monitors',
      imgLink: 'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2Faccusure-as-bp-digital-monitor-2-1671741637.webp?alt=media&token=bf9c5339-fc45-4c6c-b5ef-6c29ec7f9e2f' ),
  CategoryModel(id: 4, name: 'Ayurveda',
      imgLink:  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2Fayurvedic_0404_1_-13185.jpg?alt=media&token=85542ad5-3fa8-4a93-a706-3f9c844b24bd'),
  CategoryModel(id: 5, name: 'Skin Care',
      imgLink: 'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2Fbest-skincare-products-1656081764.jpg?alt=media&token=349b3a8f-2a05-468f-beac-76df1c5da834' ),
  CategoryModel(id: 6, name: 'Pain Relief',
      imgLink:  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2Fdownload%20(1).jpg?alt=media&token=7e7df33e-2855-4a0e-9843-382b0d43b857'),
  CategoryModel(id: 7, name: 'Homeopathy',
      imgLink:  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/categories%2Fdownload.jpg?alt=media&token=388f5f4e-3dde-421a-be0b-3455e0a18ffd'),
];

final List<String> brandNames = <String>[
  'Dettol',
  'Himalaya',
  'Cetaphil',
  'Abott',
  'Protinex',
  '1Mg',
  'Mamaearth',
  'MuscleBaze',
  'Nivia'
];
final List<String> sliderImages1 = <String>[
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fslider_images%2F64e01bf1f7dbd9099e249e9c3247fdbb9a46b4b1-1280x720-sixteen_nine.jpg?alt=media&token=e8209601-b0fd-4a36-a201-8399096b7572',
  'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fslider_images%2FMedicines.jpg?alt=media&token=0368d665-5508-4772-ab80-8f53eebc0ee3'
];

final List<Images> dummyProductImages = <Images> [
  Images(id: 1, imgLink: 'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fslider_images%2FMedicines.jpg?alt=media&token=0368d665-5508-4772-ab80-8f53eebc0ee3' ),
  Images(id: 1, imgLink: 'https://firebasestorage.googleapis.com/v0/b/ameydesigns-be5e2.appspot.com/o/test_app%2Fslider_images%2FMedicines.jpg?alt=media&token=0368d665-5508-4772-ab80-8f53eebc0ee3' )
];

final List<ProductModel> dummyProducts = <ProductModel> [
  ProductModel(id: 1,name: 'Dr Morepen BP 02 Blood Pressure Monitor', catId: 1, desc: 'box of 1 unit', otherInfo: 'asd', images: dummyProductImages,price: 1100,mrp: 1450,vendorId: 1,vendorName: 'huehue' ),
  ProductModel(id: 1,name: 'Lciara Anti Stretch Marks cream', catId: 1, desc: 'tube of 50 gm Cream', otherInfo: 'asd', images: dummyProductImages,price: 100,mrp: 200,vendorId: 1,vendorName: 'huehue' ),
  ProductModel(id: 1,name: 'prod1', catId: 1, desc: 'desc', otherInfo: 'asd', images: dummyProductImages,price: 100,mrp: 200,vendorId: 1,vendorName: 'huehue' ),
  ProductModel(id: 1,name: 'prod1', catId: 1, desc: 'desc', otherInfo: 'asd', images: dummyProductImages,price: 100,mrp: 200,vendorId: 1,vendorName: 'huehue' ),
];

//
// List<String> attrName = <String> ["Tag No.", "Birth Date ", "Is Milking?"];
// List<String> attrValue = <String> ["7219873172", "22/02/1992 ", "No"];