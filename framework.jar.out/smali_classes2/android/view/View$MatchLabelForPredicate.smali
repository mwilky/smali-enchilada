.class Landroid/view/View$MatchLabelForPredicate;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MatchLabelForPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mLabeledId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View$1;

    .line 27498
    invoke-direct {p0}, Landroid/view/View$MatchLabelForPredicate;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Landroid/view/View$MatchLabelForPredicate;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/View$MatchLabelForPredicate;
    .param p1, "x1"    # I

    .line 27498
    iput p1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    return p1
.end method


# virtual methods
.method public test(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 27503
    invoke-static {p1}, Landroid/view/View;->access$3300(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 27498
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View$MatchLabelForPredicate;->test(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
