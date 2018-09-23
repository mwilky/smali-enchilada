.class public Lcom/oneplus/lib/app/OPAlertController;
.super Ljava/lang/Object;
.source "OPAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertController$CheckedItemAdapter;,
        Lcom/oneplus/lib/app/OPAlertController$AlertParams;,
        Lcom/oneplus/lib/app/OPAlertController$RecycleListView;,
        Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMultiChoiceItemLayout:I

.field private mOnlyDarkTheme:Z

.field private mProgressStyle:I

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSingleChoiceItemLayout:I

.field private mSpaceView:Landroid/view/View;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mTitle_template:Landroid/widget/LinearLayout;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/OPAlertController$1;-><init>(Lcom/oneplus/lib/app/OPAlertController;)V

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    const-string v1, "OPAlertController"

    const-string v2, "OPAlertController start !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    new-instance v1, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/oneplus/lib/app/OPAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->OPAlertDialogStyle:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v1, v1, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_alert_progress_dialog_material:I

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_android_layout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_alert_dialog_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    :goto_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_listLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_multiChoiceItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_multichoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_singleChoiceItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_singlechoice_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog_op_listItemLayout:I

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_select_dialog_item_material:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/oneplus/lib/app/OPAlertController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/oneplus/lib/app/OPAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/app/OPAlertController;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/DialogInterface;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/app/OPAlertController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/app/OPAlertController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/lib/app/OPAlertController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    nop

    :cond_2
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 2

    if-nez p1, :cond_1

    instance-of v0, p2, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    new-array v11, v10, [Landroid/view/View;

    new-array v10, v10, [Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz p6, :cond_0

    aput-object p2, v11, v14

    aput-boolean v15, v10, v14

    add-int/lit8 v14, v14, 0x1

    :cond_0
    move/from16 v16, v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v17, v2

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v1, p3

    :goto_0
    aput-object v1, v11, v14

    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v15, v2

    nop

    :cond_2
    aput-boolean v15, v10, v14

    add-int/2addr v14, v2

    if-eqz p7, :cond_3

    aput-object p4, v11, v14

    iget-boolean v2, v0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    aput-boolean v2, v10, v14

    add-int/lit8 v14, v14, 0x1

    :cond_3
    if-eqz p8, :cond_4

    aput-object p5, v11, v14

    const/16 v18, 0x1

    aput-boolean v18, v10, v14

    :cond_4
    const/16 v19, 0x0

    const/4 v14, 0x0

    :goto_1
    array-length v1, v11

    if-ge v14, v1, :cond_a

    aget-object v1, v11, v14

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v12, :cond_9

    if-nez v19, :cond_7

    if-eqz v13, :cond_6

    move v2, v6

    goto :goto_2

    :cond_6
    move/from16 v2, v17

    :goto_2
    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_7
    if-eqz v13, :cond_8

    move v2, v7

    goto :goto_3

    :cond_8
    move v2, v3

    :goto_3
    invoke-virtual {v12, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    const/16 v19, 0x1

    :cond_9
    move-object v2, v1

    aget-boolean v1, v10, v14

    move v13, v1

    move-object v12, v2

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_a
    if-eqz v12, :cond_f

    if-eqz v19, :cond_d

    nop

    if-eqz v13, :cond_c

    if-eqz p8, :cond_b

    move v1, v9

    goto :goto_6

    :cond_b
    move v1, v8

    goto :goto_6

    :cond_c
    move v1, v4

    :goto_6
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :cond_d
    if-eqz v13, :cond_e

    move v1, v5

    goto :goto_7

    :cond_e
    move/from16 v1, v16

    :goto_7
    invoke-virtual {v12, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_10

    iget-object v2, v0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/oneplus/lib/app/OPAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v2, v0, Lcom/oneplus/lib/app/OPAlertController;->mCheckedItem:I

    const/4 v0, -0x1

    if-le v2, v0, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v4, v4, Lcom/oneplus/lib/app/OPProgressDialog;

    const/16 v5, 0x8

    if-eqz v4, :cond_0

    const-string v4, "ProgressDialog"

    const-string v6, "setupButtons mSpaceView set GONE"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/oneplus/commonctrl/R$id;->spacer:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mSpaceView:Landroid/view/View;

    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mSpaceView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mSpaceView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    const-string v4, "ProgressDialog"

    const-string v6, "setupButtons mSpaceView set GONE"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v4, 0x1020019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v3, v0

    :goto_0
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v3, v1

    :goto_1
    const v4, 0x102001b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v7, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v3, v2

    :goto_2
    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/lib/app/OPAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-ne v3, v0, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_4
    if-ne v3, v1, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_5
    if-ne v3, v2, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/OPAlertController;->centerButton(Landroid/widget/Button;)V

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    const/4 v6, 0x1

    nop

    :cond_7
    move v4, v6

    if-nez v4, :cond_8

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 5

    sget v0, Lcom/oneplus/commonctrl/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v3, 0x102002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    iget v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    iget v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    iget v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_6
    goto :goto_1

    :cond_7
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setupDecor()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/oneplus/commonctrl/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/oneplus/lib/app/OPAlertController$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/lib/app/OPAlertController$2;-><init>(Lcom/oneplus/lib/app/OPAlertController;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {v0}, Landroid/view/View;->requestApplyInsets()V

    :cond_0
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v2, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->alertTitle:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcom/oneplus/commonctrl/R$id;->title_template:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateTitleView()V

    :goto_1
    return-void
.end method

.method private setupView()V
    .locals 24

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/oneplus/commonctrl/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v0, Lcom/oneplus/commonctrl/R$id;->topPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v0, Lcom/oneplus/commonctrl/R$id;->contentPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v0, Lcom/oneplus/commonctrl/R$id;->buttonPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v0, Lcom/oneplus/commonctrl/R$id;->customPanel:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/ViewGroup;

    invoke-direct {v9, v14}, Lcom/oneplus/lib/app/OPAlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    sget v0, Lcom/oneplus/commonctrl/R$id;->topPanel:I

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    sget v0, Lcom/oneplus/commonctrl/R$id;->contentPanel:I

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v0, Lcom/oneplus/commonctrl/R$id;->buttonPanel:I

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-direct {v9, v15, v11}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {v9, v8, v12}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {v9, v7, v13}, Lcom/oneplus/lib/app/OPAlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {v9, v5}, Lcom/oneplus/lib/app/OPAlertController;->setupContent(Landroid/view/ViewGroup;)V

    invoke-direct {v9, v4}, Lcom/oneplus/lib/app/OPAlertController;->setupButtons(Landroid/view/ViewGroup;)V

    invoke-direct {v9, v6}, Lcom/oneplus/lib/app/OPAlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move/from16 v16, v3

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    move/from16 v17, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    move/from16 v18, v0

    if-nez v18, :cond_3

    if-eqz v5, :cond_3

    sget v0, Lcom/oneplus/commonctrl/R$id;->textSpacerNoButtons:I

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v17, :cond_4

    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    :cond_4
    if-nez v16, :cond_8

    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    :goto_3
    if-eqz v0, :cond_8

    if-eqz v17, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v18, :cond_7

    const/4 v3, 0x2

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_5
    or-int/2addr v1, v3

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setScrollIndicators(II)V

    :cond_8
    iget-object v0, v9, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v3, Lcom/oneplus/commonctrl/R$styleable;->OPAlertDialog:[I

    move-object/from16 v19, v4

    const v4, 0x101005d

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v0, v9

    move-object v1, v4

    move-object v2, v6

    move-object v3, v5

    move-object v9, v4

    move-object v4, v14

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    move-object/from16 v21, v6

    move/from16 v6, v17

    move-object/from16 v22, v7

    move/from16 v7, v16

    move-object/from16 v23, v8

    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/oneplus/lib/app/OPAlertController;->setBackground(Landroid/content/res/TypedArray;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZZ)V

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private updateMessageView()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v0, v0, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->oneplus_contorl_text_style_body1:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_secondary_dark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_secondary_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_top3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget v5, Lcom/oneplus/commonctrl/R$style;->oneplus_contorl_text_style_subheading:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private updateTitleView()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v0, v0, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_2

    if-nez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    const-string v2, "OPAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBold : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    instance-of v2, v2, Lcom/oneplus/lib/app/OPProgressDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    sget v4, Lcom/oneplus/commonctrl/R$style;->oneplus_contorl_text_style_title:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_primary_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle_template:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v5

    iget-object v6, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_layout_margin_bottom1:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_7
    :goto_0
    const-string v2, "OPAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTitleView.getTextSize() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->setupView()V

    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->setupDecor()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconId:I

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mForceInverseBackground:Z

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    return-void
.end method

.method public setOnlyDarkTheme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mOnlyDarkTheme:Z

    return-void
.end method

.method protected setProgressStyle(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mProgressStyle:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPAlertController;->updateMessageView()V

    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    iput p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewLayoutResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingLeft:I

    iput p3, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingTop:I

    iput p4, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingRight:I

    iput p5, p0, Lcom/oneplus/lib/app/OPAlertController;->mViewSpacingBottom:I

    return-void
.end method
