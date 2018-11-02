.class Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;
.super Ljava/lang/Thread;
.source "OPLocalRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetExternalThread"
.end annotation


# instance fields
.field private isClose:Z

.field private mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->mPreference:Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;

    invoke-static {v0, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->access$1500(Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;Lcom/oneplus/settings/ringtone/OPLocalRingtoneAdapter$RingtoneData;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-boolean v1, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mContactsRingtone:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getSimId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getSimId()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualRingtoneUriBySubId(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->isThreePart()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-boolean v1, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mHasDefaultItem:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v1, v1, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mType:I

    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->updateDb(Landroid/content/Context;Landroid/net/Uri;I)V

    :cond_4
    const-string v1, "chenhl"

    const-string v2, "set ringtone ok!"

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPMyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v3, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    iget-object v3, v3, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->this$0:Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ringtone/OPLocalRingtonePickerActivity$SetExternalThread;->isClose:Z

    return-void
.end method
