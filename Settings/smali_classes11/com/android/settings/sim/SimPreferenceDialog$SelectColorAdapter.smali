.class Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimPreferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v2}, Lcom/android/settings/sim/SimPreferenceDialog;->access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    iget-object v2, v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0700b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-nez p2, :cond_0

    iget v4, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    new-instance v6, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    invoke-direct {v6, p0, v5}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/android/settings/sim/SimPreferenceDialog$1;)V

    move-object v5, v6

    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v7, 0x7f0a0118

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    const v7, 0x7f0a0115

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v4, p2

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    :goto_0
    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v7}, Lcom/android/settings/sim/SimPreferenceDialog;->access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, v5, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v4
.end method
