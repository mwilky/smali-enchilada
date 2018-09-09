.class final Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ThreeKeyAudioPolicy2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final DND_MODE:Landroid/net/Uri;

.field private final MEDIA_SWITCH_MODE:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .line 158
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 154
    const-string/jumbo p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 155
    const-string/jumbo p1, "oem_zen_media_switch"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    .line 156
    const-string p1, "dnd_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->DND_MODE:Landroid/net/Uri;

    .line 159
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 173
    const-string v0, "ThreeKeyAudioPolicy2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings change selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->access$100(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Lcom/oneplus/three_key/ThreeKeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/three_key/ThreeKeyManager;->getThreeKeyStatus()I

    move-result v0

    .line 177
    .local v0, "status":I
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_zen_media_switch"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v1, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->access$202(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;Z)Z

    .line 202
    :cond_1
    return-void
.end method
