.class Lcom/android/settings/notification/NotificationSoundPreference$1;
.super Landroid/os/AsyncTask;
.source "NotificationSoundPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSoundPreference;->updateRingtoneName(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSoundPreference;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSoundPreference;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/NotificationSoundPreference;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10405c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a0f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "android.resource"

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120a1a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSoundPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference$1;->doInBackground([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSoundPreference$1;->this$0:Lcom/android/settings/notification/NotificationSoundPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/NotificationSoundPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationSoundPreference$1;->onPostExecute(Ljava/lang/CharSequence;)V

    return-void
.end method
