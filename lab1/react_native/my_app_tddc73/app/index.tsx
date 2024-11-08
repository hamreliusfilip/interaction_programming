import { Text, View, Button, Image, TextInput } from "react-native";
import { SafeAreaView } from "react-native-safe-area-context";

export default function Index() {
  return (
    <SafeAreaView style={{ flex: 1, backgroundColor: "white" }}>
      <View style={{ backgroundColor: "darkcyan", padding: 15 }}>
        <Text style={{ fontSize: 25, color: "white" }}>React Native</Text>
      </View>

      <Image
        source={{
          uri: "https://cdn-icons-png.flaticon.com/128/2632/2632839.png",
        }}
        style={{
          width: 100,
          height: 100,
          alignSelf: "center",
          marginTop: 30,
        }}
      />

      <View
        style={{
          alignItems: "center",
          marginTop: 30,
        }}
      >
        <View style={{ flexDirection: "row" }}>
          <View style={{ margin: 10, backgroundColor: "lightgrey", borderRadius: 5 }}>
            <Button title="Button 1" color={"black"} />
          </View>
          <View style={{ margin: 10, backgroundColor: "lightgrey", borderRadius: 5 }}>
            <Button title="Button 2" color={"black"} />
          </View>
        </View>
        <View style={{ flexDirection: "row", marginTop: 10 }}>
          <View style={{ margin: 10, backgroundColor: "lightgrey", borderRadius: 5 }}>
            <Button title="Button 3" color={"black"} />
          </View>
          <View style={{ margin: 10, backgroundColor: "lightgrey", borderRadius: 5 }}>
            <Button title="Button 4" color={"black"} />
          </View>
        </View>
      </View>

      <View style={{ backgroundColor: "lightgrey", flexDirection: "row", alignItems: "center", padding: 10, marginTop: 30 }}>
        <Text style={{ fontSize: 20, color: "black", flex: 1 }}>email</Text>
        <TextInput style={{ flex: 2, backgroundColor: "white", borderRadius: 5, padding: 10 }} />
      </View>
    </SafeAreaView>
  );
}
