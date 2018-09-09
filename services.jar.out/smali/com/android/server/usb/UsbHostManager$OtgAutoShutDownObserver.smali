.class Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;
.super Landroid/database/ContentObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtgAutoShutDownObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostManager;Landroid/os/Handler;)V
    .locals 2
    .param p2, "handler"    # Landroid/os/Handler;

    .line 360
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;->this$0:Lcom/android/server/usb/UsbHostManager;

    .line 361
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 363
    invoke-static {p1}, Lcom/android/server/usb/UsbHostManager;->access$400(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "oneplus_otg_auto_disable"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 365
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "End register OtgAutoShutDownObserver"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 370
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Observe change, resetAlarmTrigger.."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbHostManager;->access$300(Lcom/android/server/usb/UsbHostManager;)V

    .line 373
    return-void
.end method
