.class public final enum Lcom/android/server/OemSceneVibrationController$VibrationMode;
.super Ljava/lang/Enum;
.source "OemSceneVibrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OemSceneVibrationController$VibrationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OemSceneVibrationController$VibrationMode;

.field public static final enum ALLOW_ALL:Lcom/android/server/OemSceneVibrationController$VibrationMode;

.field public static final enum ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

.field public static final enum BASE:Lcom/android/server/OemSceneVibrationController$VibrationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;

    const-string v1, "ALLOW_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OemSceneVibrationController$VibrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_ALL:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    new-instance v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;

    const-string v1, "ALLOW_WHITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OemSceneVibrationController$VibrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    new-instance v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;

    const-string v1, "BASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OemSceneVibrationController$VibrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->BASE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/OemSceneVibrationController$VibrationMode;

    sget-object v1, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_ALL:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OemSceneVibrationController$VibrationMode;->BASE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->$VALUES:[Lcom/android/server/OemSceneVibrationController$VibrationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OemSceneVibrationController$VibrationMode;
    .locals 1

    const-class v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OemSceneVibrationController$VibrationMode;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneVibrationController$VibrationMode;->$VALUES:[Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, [Lcom/android/server/OemSceneVibrationController$VibrationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OemSceneVibrationController$VibrationMode;

    return-object v0
.end method
