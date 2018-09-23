.class Lcom/android/server/usage/AppTimeLimitController$UserData;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserData"
.end annotation


# instance fields
.field private currentForegroundedPackage:Ljava/lang/String;

.field private currentForegroundedTime:J

.field private groups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;",
            ">;"
        }
    .end annotation
.end field

.field private observerIdCounts:Landroid/util/SparseIntArray;

.field private packageMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private userId:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;

    iput p1, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->userId:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/usage/AppTimeLimitController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observerIdCounts:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->groups:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/server/usage/AppTimeLimitController$UserData;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentForegroundedTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->packageMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/AppTimeLimitController$UserData;)I
    .locals 1

    iget v0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->userId:I

    return v0
.end method
