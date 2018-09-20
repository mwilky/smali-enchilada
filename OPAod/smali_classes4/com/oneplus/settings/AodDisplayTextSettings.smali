.class public Lcom/oneplus/settings/AodDisplayTextSettings;
.super Landroid/app/DialogFragment;
.source "AodDisplayTextSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static KEY_DISPLAY_TEXT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AodDisplayTextSettings"


# instance fields
.field private mOwnerInfo:Landroid/widget/EditText;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "aod_display_text"

    sput-object v0, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "info":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mView:Landroid/view/View;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "parent"    # Landroid/app/Fragment;

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/oneplus/settings/AodDisplayTextSettings;

    invoke-direct {v0}, Lcom/oneplus/settings/AodDisplayTextSettings;-><init>()V

    .line 92
    .local v0, "dialog":Lcom/oneplus/settings/AodDisplayTextSettings;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/AodDisplayTextSettings;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AodDisplayTextSettings"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/AodDisplayTextSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 75
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 76
    const-string v0, "AodDisplayTextSettings"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "info":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/oneplus/settings/AodSettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/AodSettingsPreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDisplayText(Ljava/lang/String;)V

    .line 86
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mView:Landroid/view/View;

    .line 54
    invoke-direct {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->initView()V

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayTextSettings;->mView:Landroid/view/View;

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    const v1, 0x7f100195

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 59
    const v1, 0x7f1000b5

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 55
    return-object v0
.end method
