.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sDisableCountryEncodingCheck:Z

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    const-string v1, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const-string v2, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    const-string v3, ""

    const-string v4, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    const-string v5, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    const-string v6, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    const-string v7, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    const-string v8, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    const-string v9, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    const-string v10, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    const-string v11, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    const-string v12, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    const-string v13, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    const-string v14, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const-string v2, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    const-string v3, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    const-string v4, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    const-string v5, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    const-string v6, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v7, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v8, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v9, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v10, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v11, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v12, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v14, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    filled-new-array/range {v2 .. v15}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: language tables array length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " != shift tables array length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v3, v1, [Landroid/util/SparseIntArray;

    sput-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    move v3, v0

    :goto_0
    const/16 v4, 0x80

    if-ge v3, v1, :cond_3

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    if-eq v6, v4, :cond_1

    const-string v4, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: language tables index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (expected 128 or 0)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v4, v7, v3

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v4, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-array v3, v1, [Landroid/util/SparseIntArray;

    sput-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_7

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, v4, :cond_4

    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: language shift tables index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (expected 128 or 0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v7, v8, v3

    move v8, v0

    :goto_3
    if-ge v8, v6, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    if-eq v9, v10, :cond_5

    invoke-virtual {v7, v9, v8}, Landroid/util/SparseIntArray;->put(II)V

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v1
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v0, v2, v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public static charToGsm(CZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v2, v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    :cond_1
    const/16 v1, 0x1b

    return v1

    :cond_2
    return v0
.end method

.method public static charToGsmExtended(C)I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v2, v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    return v1

    :cond_0
    return v0
.end method

.method public static countGsmSeptets(C)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v1
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    return v0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    if-nez p1, :cond_2

    return v3

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v3, v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/16 v4, 0xa0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    invoke-static {v0, v1, v6, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v6

    if-ne v6, v5, :cond_1

    return-object v3

    :cond_1
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iput v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    if-le v6, v4, :cond_2

    add-int/lit16 v3, v6, 0x98

    div-int/lit16 v3, v3, 0x99

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v3, v3, 0x99

    sub-int/2addr v3, v6

    iput v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    :cond_2
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int/2addr v4, v6

    iput v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_0
    iput v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    return-object v2

    :cond_3
    sget v2, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    new-instance v8, Ljava/util/ArrayList;

    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v9, v9

    add-int/2addr v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v9, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v10, v9

    move v11, v6

    :goto_1
    if-ge v11, v10, :cond_5

    aget v12, v9, v11

    if-eqz v12, :cond_4

    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    new-instance v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    invoke-direct {v13, v12}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_e

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    invoke-interface {v0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    const/16 v12, 0x1b

    if-ne v11, v12, :cond_6

    const-string v12, "GSM"

    const-string v13, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v15, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    aget-object v14, v14, v15

    invoke-virtual {v14, v11, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v14

    if-ne v14, v5, :cond_a

    move v15, v6

    :goto_4
    if-gt v15, v2, :cond_c

    iget-object v6, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v6, v6, v15

    if-eq v6, v5, :cond_9

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v6, v15

    invoke-virtual {v6, v11, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    if-ne v6, v5, :cond_8

    if-eqz v1, :cond_7

    iget-object v3, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v16, v3, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v15

    iget-object v3, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v16, v3, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v3, v15

    goto :goto_5

    :cond_7
    iget-object v3, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v5, v3, v15

    goto :goto_5

    :cond_8
    iget-object v3, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v16, v3, v15

    add-int/lit8 v16, v16, 0x2

    aput v16, v3, v15

    :cond_9
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    :goto_6
    if-gt v3, v2, :cond_c

    iget-object v6, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v6, v6, v3

    if-eq v6, v5, :cond_b

    iget-object v6, v13, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v15, v6, v3

    add-int/2addr v15, v7

    aput v15, v6, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_c
    nop

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto :goto_3

    :cond_d
    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_e
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const v6, 0x7fffffff

    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    const v10, 0x7fffffff

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move v13, v10

    const/4 v10, 0x0

    :goto_9
    if-gt v10, v2, :cond_1a

    iget-object v14, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aget v14, v14, v10

    if-ne v14, v5, :cond_f

    goto/16 :goto_10

    :cond_f
    iget v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-eqz v15, :cond_10

    if-eqz v10, :cond_10

    const/16 v15, 0x8

    :goto_a
    goto :goto_c

    :cond_10
    iget v15, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    if-nez v15, :cond_12

    if-eqz v10, :cond_11

    goto :goto_b

    :cond_11
    const/4 v15, 0x0

    goto :goto_c

    :cond_12
    :goto_b
    const/4 v15, 0x5

    goto :goto_a

    :goto_c
    nop

    add-int v5, v14, v15

    if-le v5, v4, :cond_14

    if-nez v15, :cond_13

    const/4 v15, 0x1

    :cond_13
    add-int/lit8 v15, v15, 0x6

    rsub-int v5, v15, 0xa0

    add-int v16, v14, v5

    add-int/lit8 v16, v16, -0x1

    div-int v16, v16, v5

    mul-int v17, v16, v5

    sub-int v17, v17, v14

    goto :goto_d

    :cond_14
    const/16 v16, 0x1

    rsub-int v5, v15, 0xa0

    sub-int v17, v5, v14

    :goto_d
    move/from16 v5, v16

    move/from16 v18, v17

    iget-object v4, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    aget v4, v4, v10

    if-eqz v1, :cond_15

    if-le v4, v13, :cond_15

    goto :goto_10

    :cond_15
    if-eqz v1, :cond_17

    if-lt v4, v13, :cond_16

    goto :goto_e

    :cond_16
    move/from16 v6, v18

    goto :goto_f

    :cond_17
    :goto_e
    iget v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-lt v5, v7, :cond_18

    iget v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    if-ne v5, v7, :cond_19

    iget v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v6, v18

    if-le v6, v7, :cond_19

    goto :goto_f

    :cond_18
    move/from16 v6, v18

    :goto_f
    move v13, v4

    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v14, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    iget v7, v12, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v10, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    :cond_19
    :goto_10
    add-int/lit8 v10, v10, 0x1

    const/16 v4, 0xa0

    const/4 v5, -0x1

    const v6, 0x7fffffff

    const/4 v7, 0x1

    goto :goto_9

    :cond_1a
    nop

    move v10, v13

    const/16 v4, 0xa0

    const/4 v5, -0x1

    const v6, 0x7fffffff

    const/4 v7, 0x1

    goto/16 :goto_8

    :cond_1b
    iget v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_1c

    const/4 v4, 0x0

    return-object v4

    :cond_1c
    return-object v3
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, p2

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x1b

    if-ne v5, v6, :cond_0

    const-string v6, "GSM"

    const-string v7, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    return v0
.end method

.method private static enableCountrySpecificEncodings()V
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    const v1, 0x1070044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    :goto_0
    return-void
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, p3

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, p4

    move v4, v0

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, v6, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :goto_1
    if-le v4, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 17

    move/from16 v1, p2

    move/from16 v0, p4

    move/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ltz v0, :cond_1

    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v4, v4

    if-le v0, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown language table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", using default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :goto_2
    if-ltz v2, :cond_2

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v0, v0

    if-le v2, v0, :cond_3

    :cond_2
    const-string v0, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown single shift table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", using default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v5, v5, v4

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    const-string v7, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no language table for code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", using default"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v7, v8

    move-object v5, v7

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no single shift table for code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", using default"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v7, v7, v8

    move-object v6, v7

    :cond_5
    nop

    :goto_3
    move v7, v8

    if-ge v7, v1, :cond_b

    const/4 v8, 0x7

    mul-int/2addr v8, v7

    add-int v8, v8, p3

    div-int/lit8 v10, v8, 0x8

    rem-int/lit8 v11, v8, 0x8

    add-int v12, p1, v10

    aget-byte v12, p0, v12

    shr-int/2addr v12, v11

    const/16 v13, 0x7f

    and-int/2addr v12, v13

    const/4 v13, 0x1

    if-le v11, v13, :cond_6

    add-int/lit8 v15, v11, -0x1

    const/16 v14, 0x7f

    shr-int v15, v14, v15

    and-int/2addr v12, v15

    add-int v15, p1, v10

    add-int/2addr v15, v13

    aget-byte v13, p0, v15

    rsub-int/lit8 v15, v11, 0x8

    shl-int/2addr v13, v15

    and-int/2addr v13, v14

    or-int/2addr v12, v13

    :cond_6
    const/16 v13, 0x1b

    if-eqz v0, :cond_9

    move/from16 v16, v0

    const/16 v0, 0x20

    if-ne v12, v13, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v0, :cond_8

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    move/from16 v16, v0

    if-ne v12, v13, :cond_a

    const/4 v0, 0x1

    :goto_5
    goto :goto_6

    :cond_a
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v0, v16

    :goto_6
    add-int/lit8 v8, v7, 0x1

    goto :goto_3

    :cond_b
    nop

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string v5, "GSM"

    const-string v6, "Error GSM 7 bit packed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_0

    const-string v5, "us-ascii"

    move-object/from16 v7, p3

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object/from16 v7, p3

    :cond_1
    :goto_0
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v8, v9, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v10, 0x0

    move v11, v10

    move/from16 v10, p1

    :goto_1
    add-int v12, p1, v1

    if-ge v10, v12, :cond_c

    aget-byte v12, v0, v10

    const/16 v13, 0xff

    and-int/2addr v12, v13

    if-ne v12, v13, :cond_2

    goto/16 :goto_8

    :cond_2
    const/16 v13, 0x1b

    const/16 v14, 0x20

    if-ne v12, v13, :cond_4

    if-eqz v11, :cond_3

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_2
    move v13, v6

    goto/16 :goto_7

    :cond_3
    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    if-eqz v11, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_5

    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_3

    :cond_5
    move v13, v14

    :goto_3
    if-ne v13, v14, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v12, v6, :cond_6

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    nop

    const/4 v13, 0x2

    goto :goto_6

    :cond_8
    if-eqz v2, :cond_a

    const/16 v6, 0x80

    if-lt v12, v6, :cond_a

    add-int/lit8 v6, v10, 0x1

    add-int v13, p1, v1

    if-lt v6, v13, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v6, v10, 0x1

    const/4 v13, 0x2

    invoke-virtual {v4, v0, v10, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v6

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v13, 0x2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v12, v6, :cond_b

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    const/4 v6, 0x0

    move v11, v6

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move v6, v13

    goto/16 :goto_1

    :cond_c
    :goto_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static gsmExtendedToChar(I)C
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0x1b

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-ltz p0, :cond_2

    const/16 v1, 0x80

    if-ge p0, v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    return v0
.end method

.method public static gsmToChar(I)C
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x20

    return v0
.end method

.method public static isGsmSeptets(C)Z
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    return v1
.end method

.method private static packSmsChar([BII)V
    .locals 5

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    add-int/2addr v0, v2

    aget-byte v3, p0, v0

    shl-int v4, p2, v1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    :cond_0
    return-void
.end method

.method public static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 3

    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    array-length v2, p0

    if-lez v2, :cond_0

    array-length v2, p0

    sub-int/2addr v2, v1

    aget v1, p0, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    xor-int/lit8 v4, p2, 0x1

    invoke-static {v0, v4, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    add-int v4, v4, p1

    const/16 v6, 0xff

    if-gt v4, v6, :cond_4

    mul-int/lit8 v6, v4, 0x7

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, v6, 0x1

    new-array v7, v7, [B

    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v8, v8, v1

    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v9, v9, v2

    const/4 v10, 0x0

    move/from16 v11, p1

    mul-int/lit8 v12, p1, 0x7

    :goto_0
    if-ge v10, v3, :cond_3

    if-ge v11, v4, :cond_3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v8, v13, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v5, :cond_2

    invoke-virtual {v9, v13, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v5, :cond_1

    if-nez p2, :cond_0

    const/16 v5, 0x20

    invoke-virtual {v8, v5, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/android/internal/telephony/EncodeException;

    move v14, v0

    const-string v0, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v14, v0

    const/16 v0, 0x1b

    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    add-int/lit8 v12, v12, 0x7

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    :cond_2
    :goto_1
    invoke-static {v7, v12, v0}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x7

    move-object v0, p0

    const/4 v5, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    int-to-byte v5, v4

    aput-byte v5, v7, v0

    return-object v7

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    const-string v5, "Payload cannot exceed 255 septets"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    const-string v5, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v0, 0x6

    div-int/lit8 v2, v2, 0x7

    invoke-static {p0, v2, v1, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v3

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v3

    :cond_1
    :goto_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    new-array v2, v1, [B

    array-length v3, v2

    invoke-static {p0, v2, v0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    return-object v2
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 9

    move v0, p2

    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v3, v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    sub-int v6, v0, p2

    if-ge v6, p3, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v5, :cond_2

    invoke-virtual {v2, v6, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-ne v7, v5, :cond_0

    const/16 v5, 0x20

    invoke-virtual {v1, v5, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v0, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v0, 0x1

    const/16 v8, 0x1b

    aput-byte v8, p1, v0

    move v0, v5

    :cond_2
    :goto_1
    add-int/lit8 v5, v0, 0x1

    int-to-byte v8, v7

    aput-byte v8, p1, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    :cond_3
    :goto_2
    sub-int v3, v0, p2

    if-ge v3, p3, :cond_4

    add-int/lit8 v3, v0, 0x1

    aput-byte v5, p1, v0

    move v0, v3

    goto :goto_2

    :cond_4
    return-void
.end method
