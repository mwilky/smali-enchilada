.class public final enum Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
.super Ljava/lang/Enum;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum BASE:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum FOOT:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum POWER:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

.field public static final enum VOLUME_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "POWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->POWER:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "POWER_HOME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->POWER_HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "HOME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "FOOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->FOOT:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "BACK_SWITCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "VOLUME_SWITCH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->VOLUME_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const-string v1, "BASE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BASE:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->NORMAL:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->POWER:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->POWER_HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->HOME:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->FOOT:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BACK_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->VOLUME_SWITCH:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->BASE:Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->$VALUES:[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    .locals 1

    const-class v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;
    .locals 1

    sget-object v0, Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->$VALUES:[Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    invoke-virtual {v0}, [Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/OemPhoneWindowManager$KeyLockMode;

    return-object v0
.end method
