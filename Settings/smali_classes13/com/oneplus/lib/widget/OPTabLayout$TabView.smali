.class Lcom/oneplus/lib/widget/OPTabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "OPTabLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private final mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;Lcom/oneplus/lib/widget/OPTabLayout$Tab;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$300(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$400(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$500(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v2

    invoke-static {p1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$600(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setPaddingRelative(IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->update()V

    return-void
.end method

.method private updateTextAndIcon(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz p2, :cond_3

    if-eqz v5, :cond_2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->setLongClickable(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getTab()Lcom/oneplus/lib/widget/OPTabLayout$Tab;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    aget v6, v0, v6

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x31

    invoke-virtual {v5, v7, v6, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$700(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$800(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$700(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v2}, Lcom/oneplus/lib/widget/OPTabLayout;->access$800(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/OPMathUtils;->constrain(III)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->sendAccessibilityEvent(I)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    return-void
.end method

.method final update()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTab:Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_1

    if-eqz v3, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->addView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    :cond_5
    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomView:Landroid/view/View;

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_layout_tab_icon:I

    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_layout_tab_text:I

    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    :cond_7
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v4}, Lcom/oneplus/lib/widget/OPTabLayout;->access$900(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v2}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1000(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v3}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1000(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->updateTextAndIcon(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2, v3}, Lcom/oneplus/lib/widget/OPTabLayout$TabView;->updateTextAndIcon(Lcom/oneplus/lib/widget/OPTabLayout$Tab;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_b
    :goto_1
    return-void
.end method
