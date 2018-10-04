.class public Lcom/android/internal/app/HarmfulAppWarningActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HarmfulAppWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final EXTRA_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful_app_warning"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHarmfulAppWarning:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTarget:Landroid/content/IntentSender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/app/HarmfulAppWarningActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static createHarmfulAppWarningIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/IntentSender;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/internal/app/HarmfulAppWarningActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "harmful_app_warning"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object v0
.end method

.method private createView(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109006e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x10201af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/app/EventLogTags;->writeHarmfulAppWarningUninstall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/IntentSender;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/HarmfulAppWarningActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    const-string v3, "Error while starting intent sender"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/app/EventLogTags;->writeHarmfulAppWarningLaunchAnyway(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    iput-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mTarget:Landroid/content/IntentSender;

    const-string v1, "harmful_app_warning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mTarget:Landroid/content/IntentSender;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mHarmfulAppWarning:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v2, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x1040282

    invoke-virtual {p0, v3}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/android/internal/app/HarmfulAppWarningActivity;->createView(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x1040283

    invoke-virtual {p0, v3}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x1040281

    invoke-virtual {p0, v3}, Lcom/android/internal/app/HarmfulAppWarningActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v4, p0, Lcom/android/internal/app/HarmfulAppWarningActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/AlertController;->installContent(Lcom/android/internal/app/AlertController$AlertParams;)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/app/HarmfulAppWarningActivity;->TAG:Ljava/lang/String;

    const-string v3, "Could not show warning because package does not exist "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/internal/app/HarmfulAppWarningActivity;->finish()V

    return-void
.end method
