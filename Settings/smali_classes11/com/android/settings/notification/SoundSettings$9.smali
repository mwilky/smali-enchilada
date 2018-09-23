.class Lcom/android/settings/notification/SoundSettings$9;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRinging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings$9;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$9;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1, v0}, Lcom/android/settings/notification/SoundSettings;->access$1102(Lcom/android/settings/notification/SoundSettings;I)I

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$9;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$9;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/SoundSettings;->access$1200(Lcom/android/settings/notification/SoundSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/SoundSettings$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings$9;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/notification/SoundSettings;->access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings$9;->this$0:Lcom/android/settings/notification/SoundSettings;

    invoke-static {v2}, Lcom/android/settings/notification/SoundSettings;->access$1200(Lcom/android/settings/notification/SoundSettings;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/notification/SoundSettings$H;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    return v1
.end method
