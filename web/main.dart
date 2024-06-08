import 'package:view/view.dart';

void main() {
  Router.run(
    debugMode: true,
    routes: [
      Route(
        path: '/',
        view: (params) => Div(
          className: "center",
          children: [
            Text("Welcome to View", style: h1Style),
            Div(
              style: StyleProp(
                margin: 10,
              ),
              className: "row",
              children: [
                Link(
                  to: "https://example.com",
                  child: Text("Link to example.com"),
                  target: LinkTarget.blank,
                ),
                Button(
                  child: Text("Route to /about"),
                  onPressed: (p0) => Router.push('/about'),
                )
              ],
            )
          ],
        ),
      ),
    ],
  );
}

final h1Style = StyleProp(
  color: "#333",
);
