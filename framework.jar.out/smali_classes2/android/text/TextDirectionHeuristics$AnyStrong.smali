.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final mLookForRtl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p2

    add-int v3, p2, p3

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/16 v5, 0x2066

    if-gt v5, v4, :cond_0

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_1

    if-lez v1, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_4

    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    return v5

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    return v5

    :cond_3
    const/4 v0, 0x1

    nop

    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return v2

    :cond_6
    const/4 v2, 0x2

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
