.class public final enum Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
.super Ljava/lang/Enum;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum BASE:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum FOOT:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum HOME:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum NORMAL:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum POWER:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 153
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->NORMAL:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 154
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "POWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 155
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "POWER_HOME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER_HOME:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 156
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "HOME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->HOME:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 157
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "FOOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->FOOT:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 158
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "BACK_SWITCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BACK_SWITCH:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 159
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    const-string v1, "BASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BASE:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    .line 152
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->NORMAL:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->POWER_HOME:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->HOME:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->FOOT:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BACK_SWITCH:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->BASE:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 152
    const-class v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    .locals 1

    .line 152
    sget-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->$VALUES:[Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    invoke-virtual {v0}, [Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;

    return-object v0
.end method
