.class public Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;
.super Landroid/app/DialogFragment;
.source "DisplaySizeAdaptionDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ARG_DEFAULT_ON:Ljava/lang/String; = "default_on"

.field private static mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDefault:Landroid/widget/Checkable;

.field private mFullScreen:Landroid/widget/Checkable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mOriginValue:I

.field private mOriginalSize:Landroid/widget/Checkable;

.field private mPackageName:Ljava/lang/String;

.field private mSelectedValue:I

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 178
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .line 182
    invoke-static {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getAppTypeValue(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "value":I
    const v1, 0x7f120c4c

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 184
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v2, 0x7f120ad2

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 187
    :cond_0
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 189
    :cond_1
    if-nez v0, :cond_3

    .line 190
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v2, 0x7f120ad3

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 193
    :cond_2
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_3
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v2, 0x7f120a4a

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;I)V
    .locals 4
    .param p0, "caller"    # Landroid/app/Fragment;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 201
    new-instance v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;

    invoke-direct {v0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;-><init>()V

    .line 202
    .local v0, "fragment":Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "package"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setArguments(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {v0, p0, p2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private updateViews()V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mDefault:Landroid/widget/Checkable;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v2, v3

    :goto_3
    invoke-interface {v0, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 130
    iget v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    if-nez v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 133
    :cond_4
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 149
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 150
    iget v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 151
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    .line 153
    :cond_0
    sget-object v0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mUid:I

    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->setClassApp(ILjava/lang/String;I)V

    .line 155
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    return-void

    .line 159
    :cond_1
    iget v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginValue:I

    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    if-eq v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120630

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 160
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 166
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_1

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mDefault:Landroid/widget/Checkable;

    if-ne p1, v0, :cond_2

    .line 142
    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    .line 144
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->updateViews()V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 67
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    .line 70
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    .line 75
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mManager:Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;

    iget-object v2, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptiongeManager;->getAppTypeValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    .line 77
    iget v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mSelectedValue:I

    iput v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginValue:I

    .line 79
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mLabel:Ljava/lang/CharSequence;

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 106
    const v1, 0x7f12038a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 107
    const v1, 0x7f1205b4

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 108
    const v1, 0x7f0d0158

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 170
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 172
    .local v0, "target":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 114
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a0247

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mDefault:Landroid/widget/Checkable;

    .line 116
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v0

    const v2, 0x7f0a0249

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mOriginalSize:Landroid/widget/Checkable;

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const v1, 0x7f0a0248

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->setup(Landroid/view/View;I)Landroid/widget/Checkable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->mFullScreen:Landroid/widget/Checkable;

    .line 123
    invoke-direct {p0}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->updateViews()V

    .line 124
    return-void
.end method

.method public setup(Landroid/view/View;I)Landroid/widget/Checkable;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "value"    # I

    .line 86
    const/4 v0, 0x1

    const v1, 0x1020016

    if-ne p2, v0, :cond_1

    .line 87
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120ad2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120c4c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 92
    :cond_1
    if-nez p2, :cond_2

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120ad3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120a4a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 97
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    return-object v0
.end method
