.class public Lcom/oem/debug/OemAssertTip;
.super Ljava/lang/Object;
.source "OemAssertTip.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OEMAssertTip"

.field private static mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/oem/debug/OemAssertTip;
    .locals 1

    .line 51
    sget-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/oem/debug/OemAssertTip;

    invoke-direct {v0}, Lcom/oem/debug/OemAssertTip;-><init>()V

    sput-object v0, Lcom/oem/debug/OemAssertTip;->mOemAssertTipInstance:Lcom/oem/debug/OemAssertTip;

    .line 55
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
    .param p1, "textSize"    # I

    .line 69
    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 70
    const-string v1, "OEMAssertTip"

    const-string v2, "size is too small! set larger than 10."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 73
    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [C

    const/16 v3, 0x57

    aput-char v3, v2, v0

    .line 74
    .local v2, "str":[C
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .local v3, "testPaint":Landroid/graphics/Paint;
    int-to-float v4, p1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    invoke-virtual {v3, v2, v0, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .line 77
    .local v0, "charWidth":F
    float-to-int v1, v0

    invoke-direct {p0, p1, v1}, Lcom/oem/debug/OemAssertTip;->setTipTextPaintAttr(II)I

    move-result v1

    return v1
.end method

.method public requestShowAssertMessage(Ljava/lang/String;)I
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 60
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oem/debug/OemAssertTip;->showAssertMessage(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 61
    :cond_1
    :goto_0
    const-string v0, "OEMAssertTip"

    const-string v1, "requestShowAssertMessage:message is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, -0x1

    return v0
.end method

.method public native showAssertMessage(Ljava/lang/String;)I
.end method

.method public native testAddFunction(II)I
.end method
