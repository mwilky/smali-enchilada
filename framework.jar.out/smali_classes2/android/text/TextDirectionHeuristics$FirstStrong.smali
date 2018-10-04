.class Landroid/text/TextDirectionHeuristics$FirstStrong;
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
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    move v2, p2

    add-int v3, p2, p3

    :goto_0
    if-ge v2, v3, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

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

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    move-result v0

    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    :cond_3
    return v0
.end method
