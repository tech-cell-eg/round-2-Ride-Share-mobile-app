import android.app.Application

import com.yandex.mapkit.MapKitFactory

class MainApplication: Application() {
  override fun onCreate() {
    super.onCreate()
    MapKitFactory.setApiKey("9b214a7b-b858-431c-b059-a66412553859") // Your generated API key
  }
}