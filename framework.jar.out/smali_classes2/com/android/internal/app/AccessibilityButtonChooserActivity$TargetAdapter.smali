.class Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessibilityButtonChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AccessibilityButtonChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;Lcom/android/internal/app/AccessibilityButtonChooserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;-><init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->access$100(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->access$100(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    const v3, 0x102016e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x102016f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method
