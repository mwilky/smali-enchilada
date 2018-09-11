.class public Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TextScanner"
.end annotation


# instance fields
.field protected input:Ljava/lang/String;

.field protected position:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 2162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2159
    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2164
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 2165
    return-void
.end method

.method private scanForFloat()I
    .locals 6

    .line 2377
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2378
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    return v0

    .line 2379
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2380
    .local v0, "lastValidPos":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2382
    .local v1, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2384
    .local v2, "ch":I
    const/16 v3, 0x2b

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    .line 2385
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    .line 2386
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2387
    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v5, v5, 0x1

    .line 2388
    .end local v0    # "lastValidPos":I
    .local v5, "lastValidPos":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2389
    .end local v2    # "ch":I
    .local v0, "ch":I
    move v2, v0

    move v0, v5

    .end local v5    # "lastValidPos":I
    .local v0, "lastValidPos":I
    .restart local v2    # "ch":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 2390
    :cond_3
    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v5, 0x1

    .line 2391
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2395
    :cond_4
    :goto_1
    const/16 v5, 0x2e

    if-ne v2, v5, :cond_6

    .line 2396
    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v5, v5, 0x1

    .line 2397
    .end local v0    # "lastValidPos":I
    .restart local v5    # "lastValidPos":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2398
    .end local v2    # "ch":I
    .local v0, "ch":I
    move v2, v0

    move v0, v5

    .end local v5    # "lastValidPos":I
    .local v0, "lastValidPos":I
    .restart local v2    # "ch":I
    :goto_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 2399
    :cond_5
    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v5, 0x1

    .line 2400
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_2

    .line 2404
    :cond_6
    :goto_3
    const/16 v5, 0x65

    if-eq v2, v5, :cond_7

    const/16 v5, 0x45

    if-ne v2, v5, :cond_b

    .line 2405
    :cond_7
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    .line 2406
    if-eq v2, v4, :cond_8

    if-ne v2, v3, :cond_9

    .line 2407
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    .line 2408
    :cond_9
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2409
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    .line 2410
    .end local v0    # "lastValidPos":I
    .local v3, "lastValidPos":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2411
    .end local v2    # "ch":I
    .local v0, "ch":I
    move v2, v0

    move v0, v3

    .end local v3    # "lastValidPos":I
    .local v0, "lastValidPos":I
    .restart local v2    # "ch":I
    :goto_4
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 2412
    :cond_a
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v3, 0x1

    .line 2413
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_4

    .line 2418
    :cond_b
    :goto_5
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2419
    return v0
.end method

.method private scanForInteger()I
    .locals 4

    .line 2429
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2430
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    return v0

    .line 2431
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2432
    .local v0, "lastValidPos":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2434
    .local v1, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2436
    .local v2, "ch":I
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    .line 2437
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    .line 2438
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2439
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    .line 2440
    .end local v0    # "lastValidPos":I
    .local v3, "lastValidPos":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2441
    .end local v2    # "ch":I
    .local v0, "ch":I
    move v2, v0

    move v0, v3

    .end local v3    # "lastValidPos":I
    .local v0, "lastValidPos":I
    .restart local v2    # "ch":I
    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 2442
    :cond_3
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v3, 0x1

    .line 2443
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2447
    :cond_4
    :goto_1
    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2448
    return v0
.end method


# virtual methods
.method protected advanceChar()I
    .locals 3

    .line 2302
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 2303
    return v2

    .line 2304
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2305
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2306
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 2308
    :cond_1
    return v2
.end method

.method public ahead()Ljava/lang/String;
    .locals 3

    .line 2456
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2457
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2458
    :cond_0
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2459
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2460
    .local v1, "str":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2461
    return-object v1
.end method

.method public consume(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 2283
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2284
    .local v0, "found":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2285
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2286
    :cond_1
    return v0
.end method

.method public consume(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 2292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2293
    .local v0, "len":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2294
    .local v1, "found":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2295
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2296
    :cond_1
    return v1
.end method

.method public empty()Z
    .locals 2

    .line 2172
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasLetter()Z
    .locals 3

    .line 2489
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2490
    return v2

    .line 2491
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2492
    .local v0, "ch":C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method protected isEOL(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 2191
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isWhitespace(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 2177
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public nextChar()Ljava/lang/Integer;
    .locals 3

    .line 2248
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2249
    const/4 v0, 0x0

    return-object v0

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public nextFlag()Ljava/lang/Boolean;
    .locals 4

    .line 2270
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2271
    return-object v2

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2273
    .local v0, "ch":C
    const/16 v1, 0x30

    const/16 v3, 0x31

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 2277
    :cond_1
    return-object v2

    .line 2274
    :cond_2
    :goto_0
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2275
    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public nextFloat()Ljava/lang/Float;
    .locals 3

    .line 2211
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->scanForFloat()I

    move-result v0

    .line 2212
    .local v0, "floatEnd":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v0, v1, :cond_0

    .line 2213
    const/4 v1, 0x0

    return-object v1

    .line 2214
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2215
    .local v1, "result":Ljava/lang/Float;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2216
    return-object v1
.end method

.method public nextFunction()Ljava/lang/String;
    .locals 5

    .line 2352
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2353
    return-object v1

    .line 2354
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2356
    .local v0, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2357
    .local v2, "ch":I
    :goto_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 2358
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2359
    :cond_3
    :goto_1
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2360
    .local v3, "end":I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2362
    const/16 v4, 0x28

    if-ne v2, v4, :cond_4

    .line 2363
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2364
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2366
    :cond_4
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2367
    return-object v1

    .line 2361
    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_2
.end method

.method public nextInteger()Ljava/lang/Integer;
    .locals 3

    .line 2237
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->scanForInteger()I

    move-result v0

    .line 2239
    .local v0, "intEnd":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    if-ne v0, v1, :cond_0

    .line 2240
    const/4 v1, 0x0

    return-object v1

    .line 2241
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2242
    .local v1, "result":Ljava/lang/Integer;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2243
    return-object v1
.end method

.method public nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .locals 5

    .line 2255
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v0

    .line 2256
    .local v0, "scalar":Ljava/lang/Float;
    if-nez v0, :cond_0

    .line 2257
    const/4 v1, 0x0

    return-object v1

    .line 2258
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    .line 2259
    .local v1, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    if-nez v1, :cond_1

    .line 2260
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    return-object v2

    .line 2262
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v2, v3, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    return-object v2
.end method

.method public nextQuotedString()Ljava/lang/String;
    .locals 6

    .line 2500
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2501
    return-object v1

    .line 2502
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2503
    .local v0, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2504
    .local v2, "ch":I
    move v3, v2

    .line 2505
    .local v3, "endQuote":I
    const/16 v4, 0x27

    if-eq v2, v4, :cond_1

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 2506
    return-object v1

    .line 2507
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    .line 2508
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 2509
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2510
    :cond_3
    :goto_1
    if-ne v2, v4, :cond_4

    .line 2511
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2512
    return-object v1

    .line 2514
    :cond_4
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2515
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    iget v5, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public nextToken()Ljava/lang/String;
    .locals 1

    .line 2320
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken(C)Ljava/lang/String;
    .locals 4
    .param p1, "terminator"    # C

    .line 2330
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2331
    return-object v1

    .line 2333
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2334
    .local v0, "ch":I
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-ne v0, p1, :cond_1

    goto :goto_2

    .line 2337
    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2338
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2339
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-eq v0, p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 2340
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 2342
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2335
    .end local v1    # "start":I
    :cond_4
    :goto_2
    return-object v1
.end method

.method public nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .locals 5

    .line 2466
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2467
    return-object v1

    .line 2468
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2469
    .local v0, "ch":I
    const/16 v2, 0x25

    if-ne v0, v2, :cond_1

    .line 2470
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2471
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    return-object v1

    .line 2473
    :cond_1
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-le v2, v3, :cond_2

    .line 2474
    return-object v1

    .line 2476
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    .line 2477
    .local v2, "result":Lcom/caverock/androidsvg/SVG$Unit;
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2478
    return-object v2

    .line 2479
    .end local v2    # "result":Lcom/caverock/androidsvg/SVG$Unit;
    :catch_0
    move-exception v2

    .line 2480
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method public possibleNextFloat()Ljava/lang/Float;
    .locals 3

    .line 2226
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2227
    .local v0, "start":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2228
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()Ljava/lang/Float;

    move-result-object v1

    .line 2229
    .local v1, "result":Ljava/lang/Float;
    if-eqz v1, :cond_0

    .line 2230
    return-object v1

    .line 2231
    :cond_0
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2232
    const/4 v2, 0x0

    return-object v2
.end method

.method public restOfText()Ljava/lang/String;
    .locals 2

    .line 2523
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2524
    const/4 v0, 0x0

    return-object v0

    .line 2526
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2527
    .local v0, "start":I
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2528
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public skipCommaWhitespace()Z
    .locals 3

    .line 2198
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2199
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2200
    return v2

    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    .line 2202
    return v2

    .line 2203
    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2204
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2205
    return v1
.end method

.method public skipWhitespace()V
    .locals 2

    .line 2182
    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 2183
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2184
    nop

    .line 2187
    :goto_1
    return-void

    .line 2185
    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0
.end method
