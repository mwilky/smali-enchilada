.class Lcom/android/settings/DisplaySettings$4;
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
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v4}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "reading_mode_status"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c76

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/settings/DisplaySettings;->access$400()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c73

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$500(Lcom/android/settings/DisplaySettings;)V

    iget-object v3, p0, Lcom/android/settings/DisplaySettings$4;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$300(Lcom/android/settings/DisplaySettings;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method
