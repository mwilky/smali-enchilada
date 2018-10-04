.class public Landroid/inputmethodservice/Keyboard$Key;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public codes:[I

.field public edgeFlags:I

.field public gap:I

.field public height:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public iconPreview:Landroid/graphics/drawable/Drawable;

.field private keyboard:Landroid/inputmethodservice/Keyboard;

.field public label:Ljava/lang/CharSequence;

.field public modifier:Z

.field public on:Z

.field public popupCharacters:Ljava/lang/CharSequence;

.field public popupResId:I

.field public pressed:Z

.field public repeatable:Z

.field public sticky:Z

.field public text:Ljava/lang/CharSequence;

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x101009f

    aput v4, v2, v3

    sput-object v2, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    new-array v0, v3, [I

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    new-array v0, v1, [I

    const v1, 0x10100a7

    aput v1, v0, v3

    sput-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    return-void

    :array_0
    .array-data 4
        0x101009f
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x10100a7
        0x101009f
        0x10100a0
    .end array-data

    :array_2
    .array-data 4
        0x10100a7
        0x101009f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 9

    invoke-direct {p0, p2}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    iput p3, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput p4, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    iget v2, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Landroid/inputmethodservice/Keyboard;->access$200(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    iget v2, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Landroid/inputmethodservice/Keyboard;->access$000(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    iget v2, p2, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard_Key:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    const/16 v7, 0x10

    if-eq v2, v7, :cond_1

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x11

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->type:I

    if-ne v2, v6, :cond_2

    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/Keyboard$Key;->parseCSV(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    goto :goto_1

    :cond_1
    :goto_0
    new-array v2, v4, [I

    iget v7, v1, Landroid/util/TypedValue;->data:I

    aput v7, v2, v3

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_2
    :goto_1
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v2, v3, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->modifier:Z

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    iget v5, p2, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    or-int/2addr v2, v5

    iput v2, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v2, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    new-array v2, v4, [I

    iget-object v4, p0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput v4, v2, v3

    iput-object v2, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard$Row;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/inputmethodservice/Keyboard$Row;->access$600(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->keyboard:Landroid/inputmethodservice/Keyboard;

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v0, p1, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    return-void
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 2

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL:[I

    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_0

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_ON:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_2

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_4

    sget-object v0, Landroid/inputmethodservice/Keyboard$Key;->KEY_STATE_PRESSED:[I

    :cond_4
    :goto_0
    return-object v0
.end method

.method public isInside(II)Z
    .locals 8

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget v4, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    iget v5, p0, Landroid/inputmethodservice/Keyboard$Key;->edgeFlags:I

    and-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-ge p1, v6, :cond_4

    if-eqz v0, :cond_7

    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-gt p1, v6, :cond_7

    :cond_4
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-lt p1, v6, :cond_5

    if-eqz v3, :cond_7

    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_7

    :cond_5
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-ge p2, v6, :cond_6

    if-eqz v4, :cond_7

    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-gt p2, v6, :cond_7

    :cond_6
    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-lt p2, v6, :cond_8

    if-eqz v5, :cond_7

    iget v6, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_7

    goto :goto_4

    :cond_7
    return v2

    :cond_8
    :goto_4
    return v1
.end method

.method public onPressed()V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    return-void
.end method

.method public onReleased(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->sticky:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    :cond_0
    return-void
.end method

.method parseCSV(Ljava/lang/String;)[I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    const-string v2, ","

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    if-lez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [I

    const/4 v0, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "Keyboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing keycodes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    move v0, v4

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public squaredDistanceFrom(II)I
    .locals 4

    iget v0, p0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v1, p2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method
