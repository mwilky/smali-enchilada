.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;
    }
.end annotation


# static fields
.field private static final DELETED_MESSAGE:I = 0x2

.field private static final DELETED_MESSAGE_DELAYED:I = 0x64

.field private static final DELETED_MESSAGE_FAILED:I = 0x3

.field private static final DELETING_MESSAGE:I = 0x1

.field public static final FINGERPRINT_PARCELABLE:Ljava/lang/String; = "fingerprint_parcelable"

.field private static final KEY_OPFINGER_DELETE:Ljava/lang/String; = "opfingerprint_delete"

.field private static final KEY_OPFINGER_EDIT:Ljava/lang/String; = "key_opfinger_edit"

.field private static final KEY_OPFINGER_RENAME:Ljava/lang/String; = "opfingerprint_rename"

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x5

.field private static final SHOW_DELETE_DIALOG_MESSAGE:I = 0x7

.field private static final SHOW_RENAME_DIALOG_MESSAGE:I = 0x4

.field private static final SHOW_WARNING_DIALOG:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OPFingerPrintEditFragments"


# instance fields
.field private isDeleteDialogShow:Z

.field private isRenameDialogShow:Z

.field private isWarnDialogShow:Z

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeltePreference:Landroid/support/v7/preference/Preference;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

.field private mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Landroid/app/AlertDialog;

.field private mRenamePreference:Landroid/support/v7/preference/Preference;

.field private mUserId:I

.field private mWarnDialog:Landroid/app/AlertDialog;

.field private renameData:Ljava/lang/String;

.field private renameEdit:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/lib/widget/OPEditText;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private initViews()V
    .locals 2

    const-string v0, "key_opfinger_edit"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    const-string v0, "opfingerprint_rename"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenamePreference:Landroid/support/v7/preference/Preference;

    const-string v0, "opfingerprint_delete"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeltePreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setFingerprintName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    invoke-virtual {v0, p1, v1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "renamedialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isRenameDialogShow:Z

    const-string v0, "deletedialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isDeleteDialogShow:Z

    const-string v0, "warndialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isWarnDialogShow:Z

    const-string v0, "renamedata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameData:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint_parcelable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz p1, :cond_1

    const-string v0, "fingerprint_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    :cond_2
    :goto_0
    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const v0, 0x7f16007f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->initViews()V

    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isRenameDialogShow:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isWarnDialogShow:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isDeleteDialogShow:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "opfingerprint_rename"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v1, "opfingerprint_delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    const-string v0, "renamedialog"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "renamedata"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string v0, "warndialog"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    const-string v0, "deletedialog"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "fingerprint_name"

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120fb5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120b1a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    const v2, 0x7f120a37

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    const v2, 0x7f12038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showRenameDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0170

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    nop

    const v2, 0x7f0a03e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPEditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPEditText;->requestFocus()Z

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    new-instance v3, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$8;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$8;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121336

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120a37

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$9;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$9;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    const v3, 0x7f1200eb

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120669

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120667

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    const v2, 0x7f120a37

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    const v2, 0x7f12038a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
