import 'package:itho_new/core/app_export.dart';
import 'package:itho_new/data/apiClient/api_client.dart';
import 'package:supabase/supabase.dart';

class InitialBindings extends Bindings {
  var supabaseUrl = 'https://ezcjlglsadpfzzgfhnjm.supabase.co';

  var supabasePublicKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV6Y2psZ2xzYWRwZnp6Z2ZobmptIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzQxODMzODQsImV4cCI6MTk4OTc1OTM4NH0.qdaZsVev4R9vIGNAI9lRKmEFdpH7QYWMVoii5taS-jI';

  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    var supabaseClient = SupabaseClient(supabaseUrl, supabasePublicKey);
    Get.put(supabaseClient);
  }
}
