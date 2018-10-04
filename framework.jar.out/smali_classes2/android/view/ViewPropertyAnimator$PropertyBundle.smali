.class Landroid/view/ViewPropertyAnimator$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyBundle"
.end annotation


# instance fields
.field mNameValuesHolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPropertyMask:I


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewPropertyAnimator$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    iput-object p2, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method cancel(I)Z
    .locals 5

    iget v0, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    iget v4, v3, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    if-ne v4, p1, :cond_0

    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    not-int v4, p1

    and-int/2addr v1, v4

    iput v1, p0, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
