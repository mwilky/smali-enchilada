.class Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;
.super Ljava/lang/Object;
.source "OPAboutPhoneSoftWareController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->bindAction(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

.field final synthetic val$mIntent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->val$mIntent:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const-string v0, "com.android.FirmwareVersionDialogFragment"

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->val$mIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->show(Landroid/app/Fragment;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "build.number"

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->val$mIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$100(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$300(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$400(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$300(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$510(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-boolean v0, v0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mProcessingLastDevHit:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$508(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$600(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v2}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12127b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mProcessingLastDevHit:Z

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-boolean v1, v1, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->mProcessingLastDevHit:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-virtual {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->enableDevelopmentSettings()V

    :cond_6
    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v3}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v4}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100038

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v6}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v7}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$702(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$500(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)I

    move-result v0

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$200(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f121026

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$702(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$700(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_b
    const-string v0, "build.model"

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->val$mIntent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->newInstance()Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v1}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HardwareInfo"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->this$0:Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;

    invoke-static {v0}, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;->access$000(Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController;)Landroid/app/Fragment;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/OPAboutPhoneSoftWareController$1;->val$mIntent:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_d
    :goto_0
    return-void
.end method
