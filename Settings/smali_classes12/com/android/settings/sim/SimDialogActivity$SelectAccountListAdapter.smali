.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final OPACITY:F

.field private mContext:Landroid/content/Context;

.field private mDialogId:I

.field private mResId:I

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/sim/SimDialogActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Landroid/content/Context;",
            "I[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {p0, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p1, 0x3f0a3d71    # 0.54f

    iput p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->OPACITY:F

    iput-object p3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    iput p6, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mDialogId:I

    iput-object p2, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    iget v1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v3, p0, v2}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;Lcom/android/settings/sim/SimDialogActivity$1;)V

    move-object v2, v3

    const v3, 0x7f0a058a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v3, 0x7f0a0532

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v3, 0x7f0a025c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;

    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    if-nez v3, :cond_1

    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->this$0:Lcom/android/settings/sim/SimDialogActivity;

    invoke-virtual {v5}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0801be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x3f0a3d71    # 0.54f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v2, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/telephony/SubscriptionInfo;->createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-object v1
.end method
