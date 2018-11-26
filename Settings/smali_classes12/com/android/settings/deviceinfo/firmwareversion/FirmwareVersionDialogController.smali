.class public Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;
.super Ljava/lang/Object;
.source "FirmwareVersionDialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACTIVITY_TRIGGER_COUNT:I = 0x3

.field private static final DELAY_TIMER_MILLIS:I = 0x1f4

.field static final FIRMWARE_VERSION_LABEL_ID:I = 0x7f0a01f9
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final FIRMWARE_VERSION_VALUE_ID:I = 0x7f0a01fa
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "firmwareDialogCtrl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field private final mHits:[J

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private registerClickListeners()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a01f9

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v1, 0x7f0a01fa

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->registerClickListener(ILandroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method arrayCopy()V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public initialize()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->initializeAdminPermissions()V

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->registerClickListeners()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const v2, 0x7f0a01fa

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method initializeAdminPermissions()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    const-string v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    const-string v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedBySystem:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->arrayCopy()V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mHits:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_fun"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedBySystem:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    const-string v0, "firmwareDialogCtrl"

    const-string v1, "Sorry, no fun for you!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "firmwareDialogCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
