.class public Lcom/oem/debug/OemAssertTip;
.super Ljava/lang/Object;
.source "OemAssertTip.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OEMAssertTip"

.field private static mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oem/debug/OemAssertTip;
    .locals 1

    sget-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oem/debug/OemAssertTip;

    invoke-direct {v0}, Lcom/oem/debug/OemAssertTip;-><init>()V

    sput-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    :cond_0
    sget-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    return-object v0
.end method

.method private native setTipTextPaintAttr(II)I
.end method


# virtual methods
.method public native hideAssertMessage()I
.end method

.method public requestSetTipTextPaintAttr(I)I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    const-string v1, "OEMAssertTip"

    const-string v2, "size is too small! set larger than 10."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x57

    aput-char v3, v2, v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3, v2, v0, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v1, v0

    invoke-direct {p0, p1, v1}, Lcom/oem/debug/OemAssertTip;->setTipTextPaintAttr(II)I

    move-result v1

    return v1
.end method

.method public requestShowAssertMessage(Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oem/debug/OemAssertTip;->showAssertMessage(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "OEMAssertTip"

    const-string v1, "requestShowAssertMessage:message is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method public native showAssertMessage(Ljava/lang/String;)I
.end method

.method public native testAddFunction(II)I
.end method
