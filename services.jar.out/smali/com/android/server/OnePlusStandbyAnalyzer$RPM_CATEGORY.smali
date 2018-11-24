.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_CATEGORY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

.field public static final enum CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

.field public static final enum CANNOT_ENTER_AOSD_MODEM:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

.field public static final enum CANNOT_ENTER_ISLAND_MODE:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

.field public static final enum SLEEP_TIME_SHORT_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

.field public static final enum UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    const-string v1, "CANNOT_ENTER_AOSD_"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    const-string v1, "CANNOT_ENTER_AOSD_MODEM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_MODEM:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    const-string v1, "SLEEP_TIME_SHORT_"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->SLEEP_TIME_SHORT_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    const-string v1, "CANNOT_ENTER_ISLAND_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_ISLAND_MODE:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    const-string v1, "UNACCOUNTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_AOSD_MODEM:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->SLEEP_TIME_SHORT_:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->CANNOT_ENTER_ISLAND_MODE:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CATEGORY;

    return-object v0
.end method
