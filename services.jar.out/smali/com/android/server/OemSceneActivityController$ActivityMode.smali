.class public final enum Lcom/android/server/OemSceneActivityController$ActivityMode;
.super Ljava/lang/Enum;
.source "OemSceneActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OemSceneActivityController$ActivityMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OemSceneActivityController$ActivityMode;

.field public static final enum ALLOW_ALL:Lcom/android/server/OemSceneActivityController$ActivityMode;

.field public static final enum ALLOW_WHITE:Lcom/android/server/OemSceneActivityController$ActivityMode;

.field public static final enum BASE:Lcom/android/server/OemSceneActivityController$ActivityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/OemSceneActivityController$ActivityMode;

    const-string v1, "ALLOW_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_ALL:Lcom/android/server/OemSceneActivityController$ActivityMode;

    new-instance v0, Lcom/android/server/OemSceneActivityController$ActivityMode;

    const-string v1, "ALLOW_WHITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_WHITE:Lcom/android/server/OemSceneActivityController$ActivityMode;

    new-instance v0, Lcom/android/server/OemSceneActivityController$ActivityMode;

    const-string v1, "BASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->BASE:Lcom/android/server/OemSceneActivityController$ActivityMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/OemSceneActivityController$ActivityMode;

    sget-object v1, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_ALL:Lcom/android/server/OemSceneActivityController$ActivityMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OemSceneActivityController$ActivityMode;->ALLOW_WHITE:Lcom/android/server/OemSceneActivityController$ActivityMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OemSceneActivityController$ActivityMode;->BASE:Lcom/android/server/OemSceneActivityController$ActivityMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->$VALUES:[Lcom/android/server/OemSceneActivityController$ActivityMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OemSceneActivityController$ActivityMode;
    .locals 1

    const-class v0, Lcom/android/server/OemSceneActivityController$ActivityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemSceneActivityController$ActivityMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OemSceneActivityController$ActivityMode;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneActivityController$ActivityMode;->$VALUES:[Lcom/android/server/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, [Lcom/android/server/OemSceneActivityController$ActivityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OemSceneActivityController$ActivityMode;

    return-object v0
.end method
