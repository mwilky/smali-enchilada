.class Lcom/android/server/OnePlusStandbyAnalyzer$7;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;->get1stTelephonyAbnormal(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$7;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;)I
    .locals 4

    iget v0, p2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    int-to-long v0, v0

    iget v2, p1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mTotalAbn:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    check-cast p2, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$7;->compare(Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;)I

    move-result p1

    return p1
.end method
