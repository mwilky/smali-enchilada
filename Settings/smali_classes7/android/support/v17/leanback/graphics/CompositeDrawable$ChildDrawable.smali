.class public final Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "CompositeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/graphics/CompositeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildDrawable"
.end annotation


# static fields
.field public static final BOTTOM_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOTTOM_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEFT_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LEFT_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOP_ABSOLUTE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOP_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adjustedBounds:Landroid/graphics/Rect;

.field private final mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

.field private final mDrawable:Landroid/graphics/drawable/Drawable;

.field final mParent:Landroid/support/v17/leanback/graphics/CompositeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "absoluteTop"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->TOP_ABSOLUTE:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "absoluteBottom"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->BOTTOM_ABSOLUTE:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$3;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "absoluteLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->LEFT_ABSOLUTE:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$4;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "absoluteRight"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->RIGHT_ABSOLUTE:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "fractionTop"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->TOP_FRACTION:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$6;

    const-class v1, Ljava/lang/Float;

    const-string v2, "fractionBottom"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->BOTTOM_FRACTION:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$7;

    const-class v1, Ljava/lang/Float;

    const-string v2, "fractionLeft"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$7;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->LEFT_FRACTION:Landroid/util/Property;

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$8;

    const-class v1, Ljava/lang/Float;

    const-string v2, "fractionRight"

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable$8;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->RIGHT_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroid/support/v17/leanback/graphics/CompositeDrawable;

    new-instance v0, Landroid/support/v17/leanback/graphics/BoundsRule;

    invoke-direct {v0}, Landroid/support/v17/leanback/graphics/BoundsRule;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move-object v1, v2

    iget-object v2, p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/support/v17/leanback/graphics/BoundsRule;

    iget-object v3, p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/graphics/BoundsRule;-><init>(Landroid/support/v17/leanback/graphics/BoundsRule;)V

    iput-object v2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    goto :goto_2

    :cond_2
    new-instance v2, Landroid/support/v17/leanback/graphics/BoundsRule;

    invoke-direct {v2}, Landroid/support/v17/leanback/graphics/BoundsRule;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    :goto_2
    iput-object v1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroid/support/v17/leanback/graphics/CompositeDrawable;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public getBoundsRule()Landroid/support/v17/leanback/graphics/BoundsRule;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public recomputeBounds()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mParent:Landroid/support/v17/leanback/graphics/CompositeDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->updateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method updateBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mBoundsRule:Landroid/support/v17/leanback/graphics/BoundsRule;

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/graphics/BoundsRule;->calculateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;->adjustedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
