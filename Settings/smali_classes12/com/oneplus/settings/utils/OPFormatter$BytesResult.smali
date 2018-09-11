.class public Lcom/oneplus/settings/utils/OPFormatter$BytesResult;
.super Ljava/lang/Object;
.source "OPFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/utils/OPFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesResult"
.end annotation


# instance fields
.field public final roundedBytes:J

.field public final units:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "units"    # Ljava/lang/String;
    .param p3, "roundedBytes"    # J

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;->value:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;->units:Ljava/lang/String;

    .line 61
    iput-wide p3, p0, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;->roundedBytes:J

    .line 62
    return-void
.end method
