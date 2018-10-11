.class public Lcom/oneplus/lib/app/OPAlertController$AlertParams;
.super Ljava/lang/Object;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/oneplus/lib/app/OPAlertController$AlertParams$OnPrepareListViewListener;

.field public mOnlyDarkTheme:Z

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconAttrId:I

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$900(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;

    iget-boolean v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    new-instance v9, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$1000(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v4

    const v5, 0x1020014

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, v9

    move-object v2, p0

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$1;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;)V

    :goto_0
    move-object v2, v1

    goto :goto_3

    :cond_0
    new-instance v9, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v6, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$2;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$1100(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/oneplus/lib/app/OPAlertController;->access$1200(Lcom/oneplus/lib/app/OPAlertController;)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v2, :cond_3

    new-instance v9, Landroid/widget/SimpleCursorAdapter;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v6, v8, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    new-array v10, v8, [I

    aput v3, v10, v7

    move-object v2, v9

    move-object v3, v4

    move v4, v1

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    :goto_2
    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v2, v4, v1, v3, v5}, Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_3
    move-object v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/oneplus/lib/app/OPAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/oneplus/lib/app/OPAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v2, v0}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_5
    invoke-static {p1, v1}, Lcom/oneplus/lib/app/OPAlertController;->access$1302(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/OPAlertController;->access$1402(Lcom/oneplus/lib/app/OPAlertController;I)I

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_6

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$3;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v2, :cond_7

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams$4;-><init>(Lcom/oneplus/lib/app/OPAlertController$AlertParams;Lcom/oneplus/lib/app/OPAlertController$RecycleListView;Lcom/oneplus/lib/app/OPAlertController;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_7
    :goto_4
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_8
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v2, :cond_9

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_5

    :cond_9
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->setChoiceMode(I)V

    :cond_a
    :goto_5
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v2, v0, Lcom/oneplus/lib/app/OPAlertController$RecycleListView;->mRecycleOnMeasure:Z

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->access$1502(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public apply(Lcom/oneplus/lib/app/OPAlertController;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    :cond_3
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnlyDarkTheme:Z

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setOnlyDarkTheme(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    const/4 v0, -0x2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_7
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    const/4 v0, -0x3

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_8
    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setInverseBackgroundForced(Z)V

    :cond_9
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    :cond_a
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->createListView(Lcom/oneplus/lib/app/OPAlertController;)V

    :cond_b
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingLeft:I

    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingTop:I

    iget v5, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingRight:I

    iget v6, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;)V

    goto :goto_1

    :cond_d
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/app/OPAlertController;->setView(I)V

    :cond_e
    :goto_1
    return-void
.end method
