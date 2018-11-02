.class public Lcom/oneplus/lib/app/OPAlertDialog$Builder;
.super Ljava/lang/Object;
.source "OPAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 3

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->apply(Lcom/oneplus/lib/app/OPAlertController;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    return-object p0
.end method

.method public setIcon(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIconAttribute(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mForceInverseBackground:Z

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingLeft:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingTop:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingRight:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p5, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingBottom:I

    return-object p0
.end method

.method public show()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    return-object v0
.end method
