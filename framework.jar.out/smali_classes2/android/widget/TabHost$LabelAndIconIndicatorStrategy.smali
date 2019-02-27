.class Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelAndIconIndicatorStrategy"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mLabel:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/widget/TabHost$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;-><init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 9

    iget-object v0, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v2}, Landroid/widget/TabHost;->access$900(Landroid/widget/TabHost;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-static {v3}, Landroid/widget/TabHost;->access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x8

    if-ne v6, v8, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz v6, :cond_2

    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    move v7, v4

    nop

    :cond_2
    :goto_1
    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v7, :cond_3

    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_3

    iget-object v8, p0, Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v8, 0x4

    if-gt v4, v8, :cond_4

    const v4, 0x1080831

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    const v4, 0x106015b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-object v2
.end method
