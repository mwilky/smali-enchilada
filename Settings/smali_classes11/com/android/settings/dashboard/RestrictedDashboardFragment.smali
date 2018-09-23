.class public abstract Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "RestrictedDashboardFragment.java"


# static fields
.field private static final KEY_CHALLENGE_REQUESTED:Ljava/lang/String; = "chrq"

.field private static final KEY_CHALLENGE_SUCCEEDED:Ljava/lang/String; = "chsc"

.field private static final REQUEST_PIN_CHALLENGE:I = 0x3015

.field protected static final RESTRICT_IF_OVERRIDABLE:Ljava/lang/String; = "restrict_if_overridable"


# instance fields
.field private mActionDisabledDialog:Landroid/app/AlertDialog;

.field private mChallengeRequested:Z

.field private mChallengeSucceeded:Z

.field private mEmptyTextView:Landroid/widget/TextView;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mIsAdminUser:Z

.field private mOnlyAvailableForAdmins:Z

.field private final mRestrictionKey:Ljava/lang/String;

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    new-instance v0, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment$1;-><init>(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    return p1
.end method

.method private ensurePin()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "android.request.mesg"

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120ed1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x3015

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onDataSetChanged$0(Lcom/android/settings/dashboard/RestrictedDashboardFragment;Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method protected hasChallengeSucceeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected isRestrictedAndNotProviderProtected()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "restrict_if_overridable"

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v0}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method protected isUiRestricted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isRestrictedAndNotProviderProtected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->hasChallengeSucceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isUiRestrictedByOnlyAdmin()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mIsAdminUser:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->initEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x3015

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "restrictions"

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mIsAdminUser:Z

    if-eqz p1, :cond_0

    const-string v0, "chsc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    const-string v0, "chrq"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDataSetChanged()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->highlightPreferenceIfNeeded()V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/-$$Lambda$RestrictedDashboardFragment$xeipMNP1JUFbhaWoStBNgM1y67g;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/-$$Lambda$RestrictedDashboardFragment$xeipMNP1JUFbhaWoStBNgM1y67g;-><init>(Lcom/android/settings/dashboard/RestrictedDashboardFragment;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mActionDisabledDialog:Landroid/app/AlertDialog;

    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setEmptyView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mEmptyTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setEmptyView(Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDataSetChanged()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->shouldBeProviderProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->ensurePin()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "chrq"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "chsc"

    iget-boolean v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mChallengeSucceeded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setIfOnlyAvailableForAdmins(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mOnlyAvailableForAdmins:Z

    return-void
.end method

.method protected shouldBeProviderProtected(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "restrict_if_overridable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v3}, Landroid/content/RestrictionsManager;->hasRestrictionsProvider()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    nop

    :cond_3
    return v0
.end method
