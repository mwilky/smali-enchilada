.class final Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ThreeKeyAudioPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyAudioPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final MEDIA_SWITCH_MODE:Landroid/net/Uri;

.field private final VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;


# direct methods
.method public constructor <init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 198
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 193
    const-string/jumbo p1, "zen_mode"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 194
    const-string/jumbo p1, "oem_vibrate_under_silent"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    .line 195
    const-string/jumbo p1, "oem_zen_media_switch"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    .line 199
    return-void
.end method


# virtual methods
.method public observe()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 203
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 205
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 211
    const-string v0, "ThreeKeyAudioPolicy"

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

    .line 212
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$100(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oneplus/three_key/ThreeKeyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/three_key/ThreeKeyManager;->getThreeKeyStatus()I

    move-result v0

    .line 213
    .local v0, "status":I
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 215
    .local v1, "zenmode":I
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->VIBRATE_WHEN_MUTE_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_vibrate_under_silent"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-static {v2, v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$202(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 218
    if-ne v0, v4, :cond_a

    .line 219
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$302(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 220
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->setUp()V

    .line 221
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_zen_media_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    nop

    :cond_1
    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$302(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    goto/16 :goto_1

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->MEDIA_SWITCH_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    iget-object v5, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v5}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_zen_media_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-static {v2, v3}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$302(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    goto :goto_1

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 228
    const-string v2, "ThreeKeyAudioPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "zen mode was changed, zen mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", three key status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$200(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Z

    move-result v2

    if-nez v2, :cond_5

    if-ne v0, v4, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    :cond_5
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    .line 230
    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$200(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Z

    move-result v2

    if-ne v2, v4, :cond_6

    if-ne v0, v4, :cond_6

    if-nez v1, :cond_8

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    if-ne v1, v4, :cond_8

    :cond_7
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 235
    :cond_8
    const-string v2, "ThreeKeyAudioPolicy"

    const-string/jumbo v3, "zen mode was changed to incorrect status,need to sync"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    :cond_9
    return-void

    .line 241
    :cond_a
    :goto_1
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2, v4}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$402(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;Z)Z

    .line 242
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy$SettingsObserver;->this$0:Lcom/oneplus/threekey/ThreeKeyAudioPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy;->access$100(Lcom/oneplus/threekey/ThreeKeyAudioPolicy;)Lcom/oneplus/three_key/ThreeKeyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/three_key/ThreeKeyManager;->resetThreeKey()V

    .line 243
    return-void
.end method
