.class public final enum Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CLEAN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

.field public static final enum HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

.field public static final enum NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

.field public static final enum RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 130
    new-instance v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    const-string v1, "RESET_CLEAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    .line 131
    new-instance v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    const-string v1, "HANDLED_CLEAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    .line 132
    new-instance v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    const-string v1, "NEGATIVE_CLEAN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    .line 129
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->RESET_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 129
    const-class v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;
    .locals 1

    .line 129
    sget-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->$VALUES:[Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    return-object v0
.end method
