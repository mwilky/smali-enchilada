.class public Lcom/android/settings/print/PrintJobSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# static fields
.field private static final EXTRA_PRINT_JOB_ID:Ljava/lang/String; = "EXTRA_PRINT_JOB_ID"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MENU_ITEM_ID_CANCEL:I = 0x1

.field private static final MENU_ITEM_ID_RESTART:I = 0x2

.field private static final PRINT_JOB_MESSAGE_PREFERENCE:Ljava/lang/String; = "print_job_message_preference"

.field private static final PRINT_JOB_PREFERENCE:Ljava/lang/String; = "print_job_preference"


# instance fields
.field private mMessagePreference:Landroid/support/v7/preference/Preference;

.field private mPrintJobId:Landroid/print/PrintJobId;

.field private mPrintJobPreference:Landroid/support/v7/preference/Preference;

.field private final mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintManager:Landroid/print/PrintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/print/PrintJobSettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/print/PrintJobSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintJobSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V

    return-void
.end method

.method private getPrintJob()Landroid/print/PrintJob;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method private processArguments()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/print/PrintJobSettingsFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "EXTRA_PRINT_JOB_ID not set"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    :cond_0
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    return-void
.end method

.method private updateUi()V
    .locals 15

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    const v6, 0x7f120e0d

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e0b

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e1c

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e0e

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e0f

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v6, 0x7f120e12

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v9

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x3

    invoke-static/range {v9 .. v14}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v4, v4, [I

    const v6, 0x1010429

    aput v6, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v5

    if-eq v5, v3, :cond_5

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x10804c5

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x10804c6

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    const-string v6, "print_job_message_preference"

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    iget-object v5, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4e

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const v1, 0x7f120e0c

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->isFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    const v4, 0x7f120e1d

    invoke-virtual {p0, v4}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v1, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1600a9

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->addPreferencesFromResource(I)V

    const-string v1, "print_job_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "print_job_message_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f120e1a

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->processArguments()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/print/PrintJobSettingsFragment;->setHasOptionsMenu(Z)V

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->restart()V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return v2

    :pswitch_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    return v2

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setEnabled(Z)V

    return-void
.end method
