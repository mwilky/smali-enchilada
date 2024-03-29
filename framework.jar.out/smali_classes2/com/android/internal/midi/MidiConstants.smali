.class public final Lcom/android/internal/midi/MidiConstants;
.super Ljava/lang/Object;
.source "MidiConstants.java"


# static fields
.field public static final CHANNEL_BYTE_LENGTHS:[I

.field public static final STATUS_ACTIVE_SENSING:B = -0x2t

.field public static final STATUS_CHANNEL_MASK:B = 0xft

.field public static final STATUS_CHANNEL_PRESSURE:B = -0x30t

.field public static final STATUS_COMMAND_MASK:B = -0x10t

.field public static final STATUS_CONTINUE:B = -0x5t

.field public static final STATUS_CONTROL_CHANGE:B = -0x50t

.field public static final STATUS_END_SYSEX:B = -0x9t

.field public static final STATUS_MIDI_TIME_CODE:B = -0xft

.field public static final STATUS_NOTE_OFF:B = -0x80t

.field public static final STATUS_NOTE_ON:B = -0x70t

.field public static final STATUS_PITCH_BEND:B = -0x20t

.field public static final STATUS_POLYPHONIC_AFTERTOUCH:B = -0x60t

.field public static final STATUS_PROGRAM_CHANGE:B = -0x40t

.field public static final STATUS_RESET:B = -0x1t

.field public static final STATUS_SONG_POSITION:B = -0xet

.field public static final STATUS_SONG_SELECT:B = -0xdt

.field public static final STATUS_START:B = -0x6t

.field public static final STATUS_STOP:B = -0x4t

.field public static final STATUS_SYSTEM_EXCLUSIVE:B = -0x10t

.field public static final STATUS_TIMING_CLOCK:B = -0x8t

.field public static final STATUS_TUNE_REQUEST:B = -0xat

.field public static final SYSTEM_BYTE_LENGTHS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/midi/MidiConstants;->CHANNEL_BYTE_LENGTHS:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/midi/MidiConstants;->SYSTEM_BYTE_LENGTHS:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowRunningStatus(B)Z
    .locals 1

    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, -0x10

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cancelsRunningStatus(B)Z
    .locals 1

    const/16 v0, -0x10

    if-lt p0, v0, :cond_0

    const/16 v0, -0x9

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBytesPerMessage(B)I
    .locals 3

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/midi/MidiConstants;->SYSTEM_BYTE_LENGTHS:[I

    and-int/lit8 v2, v0, 0xf

    aget v1, v1, v2

    return v1

    :cond_0
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/midi/MidiConstants;->CHANNEL_BYTE_LENGTHS:[I

    shr-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, -0x8

    aget v1, v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isAllActiveSensing([BII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1
.end method
