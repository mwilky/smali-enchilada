.class Lcom/android/server/OnePlusStandbyAnalyzer$4;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$4;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;)I
    .locals 2

    iget v0, p2, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    iget v1, p1, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    check-cast p2, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$4;->compare(Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;)I

    move-result p1

    return p1
.end method
