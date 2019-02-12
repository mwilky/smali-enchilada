.class final Lcom/android/server/am/AppErrors$ANRProcessInfo;
.super Ljava/lang/Object;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ANRProcessInfo"
.end annotation


# instance fields
.field count:I

.field packagename:Ljava/lang/String;

.field time:J


# direct methods
.method constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->time:J

    iput-object p3, p0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->packagename:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/AppErrors$ANRProcessInfo;->count:I

    return-void
.end method
