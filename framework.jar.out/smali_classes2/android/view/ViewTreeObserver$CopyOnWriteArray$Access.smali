.class Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewTreeObserver$CopyOnWriteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Access"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1132
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    .line 1132
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 1132
    iput-object p1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$102(Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;
    .param p1, "x1"    # I

    .line 1132
    iput p1, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I

    return p1
.end method


# virtual methods
.method get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1137
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<TT;>;"
    iget-object v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method size()I
    .locals 1

    .line 1141
    .local p0, "this":Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;, "Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access<TT;>;"
    iget v0, p0, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->mSize:I

    return v0
.end method
