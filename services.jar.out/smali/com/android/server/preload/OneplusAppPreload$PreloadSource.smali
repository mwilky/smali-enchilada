.class public final enum Lcom/android/server/preload/OneplusAppPreload$PreloadSource;
.super Ljava/lang/Enum;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreloadSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/preload/OneplusAppPreload$PreloadSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

.field public static final enum HIGHUSAGE:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

.field public static final enum PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

.field public static final enum UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    const-string v1, "PREDICTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    const-string v1, "HIGHUSAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->HIGHUSAGE:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->HIGHUSAGE:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->$VALUES:[Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;
    .locals 1

    const-class v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-object v0
.end method

.method public static values()[Lcom/android/server/preload/OneplusAppPreload$PreloadSource;
    .locals 1

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->$VALUES:[Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-virtual {v0}, [Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-object v0
.end method
