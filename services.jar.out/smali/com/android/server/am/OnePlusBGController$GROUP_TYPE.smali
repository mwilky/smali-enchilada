.class public final enum Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GROUP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

.field public static final enum GENERAL:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

.field public static final enum HIGH:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

.field public static final enum LOW:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

.field public static final enum UNKNOWN:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->HIGH:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    const-string v1, "GENERAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->GENERAL:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    const-string v1, "LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->LOW:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->HIGH:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->GENERAL:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->LOW:Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$GROUP_TYPE;

    return-object v0
.end method
