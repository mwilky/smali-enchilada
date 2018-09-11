.class final Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;
.super Landroid/database/ContentObserver;
.source "BaseNfcPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/BaseNfcPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AirplaneModeObserver"
.end annotation


# instance fields
.field private final AIRPLANE_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/nfc/BaseNfcPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/BaseNfcPreferenceController;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/BaseNfcPreferenceController;

    .line 129
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 125
    const-string p1, "airplane_mode_on"

    .line 126
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->AIRPLANE_MODE_URI:Landroid/net/Uri;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/BaseNfcPreferenceController;Lcom/android/settings/nfc/BaseNfcPreferenceController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/nfc/BaseNfcPreferenceController;
    .param p2, "x1"    # Lcom/android/settings/nfc/BaseNfcPreferenceController$1;

    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;-><init>(Lcom/android/settings/nfc/BaseNfcPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 142
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/BaseNfcPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->access$300(Lcom/android/settings/nfc/BaseNfcPreferenceController;)V

    .line 144
    return-void
.end method

.method public register()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/BaseNfcPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->access$100(Lcom/android/settings/nfc/BaseNfcPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->AIRPLANE_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 134
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/settings/nfc/BaseNfcPreferenceController$AirplaneModeObserver;->this$0:Lcom/android/settings/nfc/BaseNfcPreferenceController;

    invoke-static {v0}, Lcom/android/settings/nfc/BaseNfcPreferenceController;->access$200(Lcom/android/settings/nfc/BaseNfcPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    return-void
.end method
