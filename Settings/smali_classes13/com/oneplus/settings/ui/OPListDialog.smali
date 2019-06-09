.class public Lcom/oneplus/settings/ui/OPListDialog;
.super Ljava/lang/Object;
.source "OPListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;,
        Lcom/oneplus/settings/ui/OPListDialog$DialogListAdapter;
    }
.end annotation


# static fields
.field private static final TYPE_NEGATIVE:I = 0x2

.field private static final TYPE_POSITIVE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogListAdapter:Lcom/oneplus/settings/ui/OPListDialog$DialogListAdapter;

.field private mListEntries:[Ljava/lang/String;

.field private mListEntriesValue:[Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mNegativeCount:I

.field private mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

.field private mPositiveCount:I

.field private mRootContainer:Landroid/widget/RadioGroup;

.field private mVibrateKey:Ljava/lang/String;

.field private n:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private status:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->p:Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mPositiveCount:I

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mNegativeCount:I

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPListDialog;->status:Z

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0188

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->p:Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->n:Landroid/widget/Button;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mPositiveCount:I

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mNegativeCount:I

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPListDialog;->status:Z

    iput v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntries:[Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0188

    invoke-virtual {v1, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a045e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog$2;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    const v4, 0x7f120a37

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/oneplus/settings/ui/OPListDialog$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPListDialog$1;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    const v4, 0x7f12038a

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPListDialog;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPListDialog;)Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPListDialog;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPListDialog;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPListDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPListDialog;->setStatus(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getNButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->n:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->n:Landroid/widget/Button;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPButton()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->p:Landroid/widget/Button;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setButtonType(IIZ)V
    .locals 2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->p:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iput p2, p0, Lcom/oneplus/settings/ui/OPListDialog;->mPositiveCount:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->n:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setEnabled(Z)V

    iput p2, p0, Lcom/oneplus/settings/ui/OPListDialog;->mNegativeCount:I

    :cond_2
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/oneplus/settings/ui/OPListDialog$4;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/settings/ui/OPListDialog$4;-><init>(Lcom/oneplus/settings/ui/OPListDialog;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->mOnDialogListItemClickListener:Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;

    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPListDialog;->status:Z

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVibrateKey(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntriesValue:[Ljava/lang/String;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPListDialog;->mRootContainer:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mListEntries:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/oneplus/settings/ui/OPListDialog;->mCurrentIndex:I

    if-ne v4, v2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    new-instance v4, Lcom/oneplus/settings/ui/OPListDialog$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ui/OPListDialog$3;-><init>(Lcom/oneplus/settings/ui/OPListDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPListDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
