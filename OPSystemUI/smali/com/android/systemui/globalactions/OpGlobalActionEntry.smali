.class public Lcom/android/systemui/globalactions/OpGlobalActionEntry;
.super Landroid/widget/FrameLayout;
.source "OpGlobalActionEntry.java"


# instance fields
.field private mAction:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

.field private mActionConfirmLabel:Landroid/widget/TextView;

.field private mActionIcon:Landroid/widget/ImageView;

.field private mActionLabel:Landroid/widget/TextView;

.field private mAnims:Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;

.field private mSelected:Z

.field private mState:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mActionIcon:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mActionLabel:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mSelected:Z

    sget-object v0, Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;->INIT:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mState:Lcom/android/systemui/globalactions/OpGlobalActions$ActionState;

    return-void
.end method


# virtual methods
.method public getMyIndex()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mAction:Lcom/android/systemui/globalactions/OpGlobalActions$Action;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/OpGlobalActions$Action;->ordinal()I

    move-result v0

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mSelected:Z

    return-void
.end method

.method public startAnimateShowAdv()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->mAnims:Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/OpGlobalActionEntryAnimations;->getAdvShowAnimSets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->getMyIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/OpGlobalActionEntry;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
