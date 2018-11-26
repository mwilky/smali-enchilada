.class Lcom/android/settings/DisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_URI:Landroid/net/Uri;

.field private final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings$2;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_URI:Landroid/net/Uri;

    const-string v0, "accessibility_display_inversion_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings$2;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$2;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$2;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$200(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$200(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_6
    iget-object v4, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/settings/DisplaySettings$2;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v4}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    move v1, v2

    nop

    :cond_7
    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_8
    return-void
.end method
