.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_CX_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

.field public static final enum A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

.field public static final enum N:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    const-string v1, "A"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    const-string v1, "N"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->N:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->A:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->N:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_CX_STATE;

    return-object v0
.end method
