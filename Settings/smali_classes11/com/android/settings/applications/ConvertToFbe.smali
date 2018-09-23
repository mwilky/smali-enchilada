.class public Lcom/android/settings/applications/ConvertToFbe;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConvertToFbe.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field static final TAG:Ljava/lang/String; = "ConvertToFBE"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private convert()V
    .locals 2

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/ConfirmConvertToFbe;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f12043a

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/applications/ConvertToFbe;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ConvertToFbe;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->convert()V

    :cond_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f12043a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x192

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->convert()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12043a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f0d0060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/applications/-$$Lambda$ConvertToFbe$cKWuNkHe-dkbg8HKJCoDk07_9og;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/-$$Lambda$ConvertToFbe$cKWuNkHe-dkbg8HKJCoDk07_9og;-><init>(Lcom/android/settings/applications/ConvertToFbe;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
